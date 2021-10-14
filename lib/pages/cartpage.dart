import 'package:flutter/material.dart';
import 'package:lojinhaalura/widgets/appbarcustom.dart';

class Carrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: 'Carrinho', isPageCart: false),
      body: Text('Estamos no carrinho'),
    );
  }
}
