import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lojinhaalura/model/item_carrinho.dart';
import 'package:lojinhaalura/model/movel.dart';
import 'package:lojinhaalura/pages/homepage.dart';
import 'package:lojinhaalura/widgets/texto_detalhes.dart';

class CardDetalhes extends StatelessWidget {
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  final Movel movel;
  final Function atualizaPage;

  CardDetalhes({Key? key, required this.movel, required this.atualizaPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextoDetalhes(
              texto: movel.titulo,
              estilo: Theme.of(context).textTheme.headline1),
          TextoDetalhes(texto: movel.descricao),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(formatacaoReais.format(movel.preco),
                    style: Theme.of(context).textTheme.headline1),
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor),
                    onPressed: () {
                      _verificarListaItemCart(Inicio.itensCarrinho,
                          ItemCarrinho(movel: movel, quantidade: 1));
                    },
                    child: Text(
                      'Comprar',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  _adicionarItemCarrinho(ItemCarrinho item) {
    Inicio.itensCarrinho.add(item);
    atualizaPage();
  }

  void _verificarListaItemCart(List<ItemCarrinho> list, ItemCarrinho item) {
    int indiceMovel = list.indexWhere((element) => element == item);
    if (indiceMovel >= 0) {
      list[indiceMovel].quantidade = list[indiceMovel].quantidade + 1;
    } else {
      _adicionarItemCarrinho(item);
    }
  }
}
