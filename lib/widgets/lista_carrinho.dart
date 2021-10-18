import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lojinhaalura/model/item_carrinho.dart';
import 'package:lojinhaalura/model/movel.dart';
import 'package:lojinhaalura/pages/homepage.dart';

class ListaCarrinho extends StatefulWidget {
  final Function atualiza;

  const ListaCarrinho({Key? key, required this.atualiza}) : super(key: key);

  @override
  State<ListaCarrinho> createState() => _ListaCarrinhoState();
}

class _ListaCarrinhoState extends State<ListaCarrinho> {
  final List<ItemCarrinho> carrinho = Inicio.itensCarrinho;
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: carrinho.length,
      itemBuilder: (context, index) {
        ItemCarrinho item = carrinho[index];
        Movel movel = item.movel;
        return Expanded(
          child: Container(
            height: 92,
            margin: EdgeInsets.all(16),
            child: Card(
                clipBehavior: Clip.hardEdge,
                child: Row(
                  children: [
                    Expanded(
                      child: Image(
                          height: 82,
                          image: AssetImage(
                              'utilidades/assets/imagens/' + movel.foto),
                          fit: BoxFit.cover),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movel.titulo,
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(formatacaoReais.format(movel.preco)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () => _aumentarQuantidade(item),
                                    child: Container(
                                        margin: EdgeInsets.all(8),
                                        child: Icon(Icons.add, size: 14)),
                                  ),
                                  Text('${item.quantidade}'),
                                  GestureDetector(
                                    onTap: () => _diminuirQuantidade(item),
                                    child: Container(
                                        margin: EdgeInsets.all(8),
                                        child: Icon(Icons.remove, size: 14)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        );
      },
    );
  }

  _aumentarQuantidade(ItemCarrinho item) {
    setState(() {
      item.quantidade++;
      widget.atualiza();
    });
  }

  _diminuirQuantidade(ItemCarrinho item) {
    if (item.quantidade > 1) {
      setState(() {
        item.quantidade--;
        widget.atualiza();
      });
    } else {
      _removerItem(item);
    }
  }

  _removerItem(ItemCarrinho item) {
    setState(() {
      Inicio.itensCarrinho.remove(item);
    });
  }
}
