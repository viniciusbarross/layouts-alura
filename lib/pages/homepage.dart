import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinhaalura/model/item_carrinho.dart';
import 'package:lojinhaalura/pages/detailpage.dart';
import 'package:lojinhaalura/controller/moveis_controller.dart';
import 'package:lojinhaalura/model/movel.dart';
import 'package:lojinhaalura/widgets/appbarcustom.dart';
import 'package:lojinhaalura/widgets/grid_custom.dart';

class Inicio extends StatefulWidget {
  static List<ItemCarrinho> itensCarrinho = [];

  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBarCustom(title: 'Lojinha Alura', isPageCart: true),
        body: _listMoveis()

        // TextButton(
        //     onPressed: () {
        //       Navigator.push(
        //           context, MaterialPageRoute(builder: (context) => DetailPage()));
        //     },
        //     child: Text('Detalhes')),
        );
  }

  _listMoveis() {
    MoveisController moveisController = MoveisController();
    return FutureBuilder<List<Movel>>(
      future: moveisController.listMoveis(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        final List<Movel> moveis = snapshot.data;
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return CircularProgressIndicator();
          case ConnectionState.done:
            return Column(
              children: [
                Divider(),
                Text('Produtos'),
                Divider(),
                Flexible(
                    child: GridProdutos(
                  moveis: moveis,
                  atualiza: atualiza,
                )),
              ],
            );
          // return ListView.builder(
          //   itemBuilder: (context, index) {
          //     return Card(
          //       child: Text(moveis[index].titulo),
          //     );
          //   },
          //   itemCount: moveis.length,
          // );

          default:
            return Text('');
        }
      },
    );
  }

  void atualiza() {
    setState(() {});
  }
}
