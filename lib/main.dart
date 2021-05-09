import 'package:flutter/material.dart';
import 'model/model.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

import 'model/someIsolate.dart';

var controller = new StreamController<String>();


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Model model;

  //Observable<int> o1 = Observable.fromIterable([1, 2, 3, 4]);
  //var streamObservable = new Observable(controller.stream);

  @override
  void initState() {


    List list = [0, 1, 2];
    //Map map = list.asMap();


//    list.map((value) {
//      return value * 2;
//    });
//
    Stream.fromIterable([1, 2, 3])
        .throttleTime(Duration(seconds: 1))
        .listen(print);







    //print(list);
    //l = [ ('a',(1,2)), ('b',(2,3)), ('c',(3,4) ) ]
    // t.e required это просто пометка того что оно может работать без этого
    // но это +- нужно
    //model  = Model(s1:" SOME", s:  "ASDASd");

  }

  @override
  Widget build(BuildContext context) {

    SomeIsolate isolate = SomeIsolate(context);

    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.redAccent,
          child: SafeArea(
            child: Container(
              color: Colors.redAccent,
              height: double.infinity,
              width: double.infinity,
              child: Center(
                  child: Text(
                    "SOME APP",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700
                    ),
                  )),
            )
          ),
        ),
      ),
    );


//    Container(
//      color: Colors.redAccent,
//      height: double.infinity,
//      width: double.infinity,
//      child: Center(
//          child: Text(
//            "SOME QR",
//            style: TextStyle(
//                color: Colors.white,
//                fontSize: 30,
//                fontWeight: FontWeight.w700
//            ),
//          )),
//    ),

//    return StreamBuilder(
//      stream: ,
//      initialData: 0,
//      builder: (context, snap) {
//        return Container(
//          color: Colors.indigo,
//
//          child: Text("Asdasdasd"),
//
//        );
//      }
//
//      },
//    );
  }
}
