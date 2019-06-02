import 'package:flutter/material.dart';

void main() => runApp(MyApp("Hello World"));

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  String content;

  MyApp(this.content);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  bool isShowText =true;

  void increment(){
    setState((){
      widget.content += "d";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text("Widget -- StatefulWidget及State"),),
          body: Center(
              child: GestureDetector(
                child: isShowText? Text(widget.content) :null,
                onTap: increment,
              )
          ),
        )
    );
  }
}