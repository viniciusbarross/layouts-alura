import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lojinhaalura/pages/homepage.dart';
import 'package:lojinhaalura/widgets/appbarcustom.dart';
import 'package:lojinhaalura/widgets/lista_carrinho.dart';

class Carrinho extends StatefulWidget {
  @override
  State<Carrinho> createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {
  late int valorTotal = _calculaTotal();
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 80,
        padding: EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              formatacaoReais.format(valorTotal),
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
      appBar: AppBarCustom(title: 'Carrinho', isPageCart: false),
      body: _constroiTela(),
    );
  }

  atualiza() {
    setState(() {});
  }

  int _calculaTotal() {
    if (Inicio.itensCarrinho.isNotEmpty) {
      return Inicio.itensCarrinho
          .map((e) => e.movel.preco * e.quantidade)
          .reduce((precoAtual, precoNovo) => precoAtual + precoNovo);
    }
    return 0;
  }

  Widget _constroiTela() {
    if (Inicio.itensCarrinho.isNotEmpty) {
      return ListaCarrinho(atualiza: atualiza);
    } else {
      return Center(child: Text('Nenhum item no carrinho'));
    }
  }
}
