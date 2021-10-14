import 'package:flutter/material.dart';

class ImagemElementGrid extends StatelessWidget {
  final String pathImage;

  const ImagemElementGrid({Key? key, required this.pathImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
        fit: BoxFit.cover,
        image: AssetImage('utilidades/assets/imagens/' + pathImage));
  }
}
