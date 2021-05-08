import 'package:flutter/material.dart';
import 'model/model.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Model model;


  @override
  void initState() {
    model  = Model();
  }

  @override
  Widget build(BuildContext context) {
    model.someResponse(context);

    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.redAccent,
          child: SafeArea(
            child: FutureBuilder<String>(
                future: model.computeFunction,
                initialData: "Loading...",
                builder: (context,  snapshot){

                  return Container(
                    color: Colors.redAccent,
                    height: double.infinity,
                    width: double.infinity,
                    child: Center(
                        child: Text(
                          "SOME QR",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w700
                          ),
                        )),
                  );
                },

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
