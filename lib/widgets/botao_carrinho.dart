import 'package:flutter/material.dart';

const pathCart = 'utilidades/assets/icones/carrinho.png';

class BotaoCarrinho extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/carrinho');
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(circularSize),
            bottomLeft: Radius.circular(circularSize),
          ),
        ),
        alignment: Alignment.centerRight,
        height: 40,
        padding: EdgeInsets.only(right: paddingImage, left: paddingImage),
        child: Image(
          height: heightImage,
          image: AssetImage(pathCart),
        ),
      ),
    );
  }
}
