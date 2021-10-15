import 'package:flutter/material.dart';
import 'package:lojinhaalura/widgets/appbarcustom.dart';
import 'package:lojinhaalura/widgets/lista_carrinho.dart';

class Carrinho extends StatefulWidget {
  @override
  State<Carrinho> createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: 'Carrinho', isPageCart: false),
      body: ListaCarrinho(atualiza: atualiza),
    );
  }

  atualiza() {
    setState(() {});
  }
}
