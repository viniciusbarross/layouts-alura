import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinhaalura/model/movel.dart';
import 'package:lojinhaalura/pages/detailpage.dart';
import 'package:lojinhaalura/widgets/degradee_elem_grid.dart';
import 'package:lojinhaalura/widgets/imagem_elem_grid.dart';
import 'package:lojinhaalura/widgets/titulo_elem_grid.dart';

class ElementoGrid extends StatelessWidget {
  final Movel movel;

  const ElementoGrid({Key? key, required this.movel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailPage(movel: movel)));
      },
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(spreadRadius: 2, blurRadius: 8, color: Colors.black12)
        ]),
        margin: EdgeInsets.all(10),
        child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            elevation: 12,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Expanded(child: ImagemElementGrid(pathImage: movel.foto)),
                  DegradeeElementGrid(),
                  TituloElementoGrid(titulo: movel.titulo)
                ],
              ),
            )),
      ),
    );
  }
}
