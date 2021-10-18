import 'package:flutter/material.dart';
import 'package:lojinhaalura/config_styles.dart';
import 'package:lojinhaalura/pages/cartpage.dart';
import 'package:lojinhaalura/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
                color: Colors.white),
            headline3: TextStyle(
                fontSize: 16,
                fontFamily: 'Alata',
                fontWeight: FontWeight.bold,
                color: Colors.black),
            headline4: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            headline5: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Inicio(),
    );
  }

  void atualiza() {
    setState(() {});
  }
}
