import 'package:flutter/material.dart';

class TextoDetalhes extends StatelessWidget {
  final String texto;
  final TextStyle? estilo;

  const TextoDetalhes({Key? key, required this.texto, this.estilo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16, right: 16, top: 10),
        child: _estilizarTexto(texto));
  }

  _estilizarTexto(texto) {
    if (estilo != null) {
      return Text(texto, style: estilo);
    }
    return Text(texto);
  }
}
