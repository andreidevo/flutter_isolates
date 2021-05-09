import 'dart:isolate';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_is/model/model.dart';



class SomeIsolate {

  Isolate isolate;
  ReceivePort receivePort = ReceivePort();
  String href = "assets/json.json";
  BuildContext context;

  SomeIsolate(BuildContext context){
    init();
    this.context = context;

  }

  Future sendReceive(SendPort port, msg) {
    ReceivePort response = new ReceivePort();
    port.send([msg, response.sendPort]);
    return response.first;
  }

  void init() async {

    isolate = await Isolate.spawn(func, receivePort.sendPort);
    var sendPort = await receivePort.first;
    var msg = await sendReceive(sendPort, "bye");

    print("Isolate: $isolate");
    receivePort.listen((dynamic message) {
      print('New message from Isolate: $message');
    });
  }


  static void func(SendPort sendPort) async {

    String jsonString = await DefaultAssetBundle.of(context).loadString("assets/json.json");
    final json = jsonDecode(jsonString);
    print(json);


    sendPort.send("PARSED ISOLATE");
  }


}
