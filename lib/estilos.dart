import "package:flutter/material.dart";
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = 'Temas customizados';
    return MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        secondaryHeaderColor: Colors.amber,
        canvasColor: Colors.pink,
      ),
      home: Home(
        title: appName,
      ),
    );
  }
}

class Home extends StatelessWidget {
  final String? title;

  Home({Key? key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title!),
        ),
        body: Column(children: [
          Spacer(),
          Center(child: Opacity(opacity: .25, child: Text("Faded"))),
          Spacer(),
          Center(
              child: Container(
                  color: Theme.of(context).secondaryHeaderColor,
                  child: Text("Texto com cor de fundo",
                      style: Theme.of(context).textTheme.displayMedium))),
          Spacer(),
          Center(
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFF000000), Color(0xFFFF0000)],
                          tileMode: TileMode.mirror)),
                  child: Container(
                      width: 100,
                      height: 100,
                      child: Text("Hello",
                          style: TextStyle(color: Colors.white))))),
          Spacer(),
          Center(
              child: Container(
                  color: Colors.yellow,
                  child: Transform(
                      alignment: Alignment.bottomLeft,
                      transform: Matrix4.skewY(0.9)..rotateZ(-6 / 12.0),
                      child: Container(
                          padding: const EdgeInsets.all(12.0),
                          color: Colors.green,
                          child: Text("Eat at Joe's!"))))),
          Spacer()
        ]));
  }
}
