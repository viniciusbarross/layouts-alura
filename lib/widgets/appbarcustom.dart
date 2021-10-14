import 'package:flutter/material.dart';
import 'package:lojinhaalura/widgets/botao_carrinho.dart';

class AppBarCustom extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool isPageCart;

  AppBarCustom({required this.title, this.isPageCart = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      actions: [isPageCart ? BotaoCarrinho() : Container()],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
