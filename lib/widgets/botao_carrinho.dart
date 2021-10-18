import 'package:flutter/material.dart';
import 'package:lojinhaalura/pages/homepage.dart';
import 'package:lojinhaalura/widgets/indicator_botao_cart.dart';

const pathCart = 'utilidades/assets/icones/carrinho.png';

class BotaoCarrinho extends StatefulWidget {
  final double circularSize;
  final double paddingImage;
  final double heightImage;

  const BotaoCarrinho(
      {Key? key,
      this.circularSize = 100,
      this.paddingImage = 20,
      this.heightImage = 35})
      : super(key: key);

  @override
  State<BotaoCarrinho> createState() => _BotaoCarrinhoState();
}

class _BotaoCarrinhoState extends State<BotaoCarrinho> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/carrinho')
            .then((value) => setState(() {}));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(widget.circularSize),
            bottomLeft: Radius.circular(widget.circularSize),
          ),
        ),
        alignment: Alignment.centerRight,
        height: 40,
        padding: EdgeInsets.only(
            right: widget.paddingImage, left: widget.paddingImage),
        child: _visibilityIndicatorCart(),
      ),
    );
  }

  _visibilityIndicatorCart() {
    if (Inicio.itensCarrinho.length > 0) {
      return Stack(
        children: [
          Image(
            height: widget.heightImage,
            image: AssetImage(pathCart),
          ),
          IndicatorBotaoCart()
        ],
      );
    }
    return Image(
      height: widget.heightImage,
      image: AssetImage(pathCart),
    );
  }
}
