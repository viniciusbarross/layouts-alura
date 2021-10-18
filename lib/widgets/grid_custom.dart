import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinhaalura/model/movel.dart';
import 'package:lojinhaalura/widgets/elemento_grid.dart';

class GridProdutos extends StatelessWidget {
  late List<Movel> moveis;
  final Function atualiza;

  GridProdutos({required this.moveis, required this.atualiza});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: moveis.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => ElementoGrid(
        movel: moveis[index],
        atualiza: atualiza,
      ),
    );
  }
}
