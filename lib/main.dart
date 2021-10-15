import 'package:flutter/material.dart';
import 'package:lojinhaalura/config_styles.dart';
import 'package:lojinhaalura/pages/cartpage.dart';
import 'package:lojinhaalura/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/carrinho': (context) => Carrinho(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: PaletaCores().lilas,
        textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 20,
                fontFamily: 'Alata',
                fontWeight: FontWeight.bold,
                color: Colors.black),
            headline2: TextStyle(
                fontSize: 20,
                fontFamily: 'Alata',
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Inicio(),
    );
  }
}
