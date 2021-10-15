import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TituloElementoGrid extends StatelessWidget {
  final String titulo;

  const TituloElementoGrid({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 10,
        child: Text(
          titulo,
          style: Theme.of(context).textTheme.headline2,
        ));
  }
}
