import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinhaalura/model/movel.dart';
import 'package:lojinhaalura/widgets/imagem_elem_grid.dart';

class ElementoGrid extends StatelessWidget {
  final Movel movel;

  const ElementoGrid({Key? key, required this.movel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Column(
          children: [ImagemElementGrid(pathImage: movel.foto)],
        ));
  }
}
