import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:lojinhaalura/model/movel.dart';

const uri =
    'https://gist.githubusercontent.com/viniciusbarross/f36445ce518086ac535c0198660b388b/raw/7a7e99d294a6c00c01d07ba0d57cd77dd26ab54f/moveis';

class MoveisController {
  Dio dio = Dio();

  Future<List<Movel>> listMoveis() async {
    final response = await dio.get(uri);
    final List<Movel> list = json
        .decode(response.data)
        .map<Movel>((data) => Movel.fromJson(data))
        .toList();

    return list;
  }
}
