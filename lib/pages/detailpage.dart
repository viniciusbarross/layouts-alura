import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes')),
      body: TextButton(
        child: Text('Carrinho'),
        onPressed: () {
          Navigator.pushNamed(context, '/carrinho');
        },
      ),
    );
  }
}
