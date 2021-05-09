
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:math';
import 'dart:isolate';



Future<String> jsonParse (Param param) async {


  String jsonString = await DefaultAssetBundle.of(param.context).loadString(param.href);
  final json = jsonDecode(jsonString);
  return json;

}

class Param {
  String href;
  BuildContext context;
  SendPort sendPort;

  Param(this.href, this.context);

}

class Model{


  Model({
    @required String s,
    @required String s1
  });


  Future<http.Response> getQR() async {

    Response request = await http.post(Uri.parse(""), body: {
        "some": "asdasd",
    });

    return request;
  }


  Future<String> computeFunction = Future.value();

  Future<void> someResponse(BuildContext context) async {
    var x = await compute(jsonParse, Param("assets/json.json", context));
  }
}