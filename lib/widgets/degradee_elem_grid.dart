import 'package:flutter/material.dart';

class DegradeeElementGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.transparent,
            Color.fromRGBO(178, 155, 1778, 0.5)
          ])),
    );
  }
}
