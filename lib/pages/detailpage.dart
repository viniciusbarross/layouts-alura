import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinhaalura/model/movel.dart';
import 'package:lojinhaalura/widgets/appbarcustom.dart';
import 'package:lojinhaalura/widgets/card_detalhes.dart';

class DetailPage extends StatefulWidget {
  final Movel movel;

  const DetailPage({Key? key, required this.movel}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      super.initState();
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image:
                  AssetImage('utilidades/assets/imagens/${widget.movel.foto}'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarCustom(title: ''),
        body: TextButton(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(16),
              height: 220,
              child: CardDetalhes(
                movel: widget.movel,
                atualizaPage: () => atualiza,
              ),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/carrinho');
          },
        ),
      ),
    );
  }

  atualiza() {
    setState(() {});
  }
}
