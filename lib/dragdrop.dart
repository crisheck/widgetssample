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
        canvasColor: Colors.green[600],
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
  
  List<Container> containers = []; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title!),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          DragTarget(
              builder: (context, candidateData, rejectedData) { 
                        return Text("Arraste aqui");/*Container( 
                          width: 200, height: 200,
                           color: Colors.blue, 
                           constraints: const BoxConstraints(minHeight: 50),);*/ 
                         },
              onMove: (data) => print(data.data)),
          Container(height: 50),
          Draggable(
              data: "Eu fui arrastado",
              child: Container(width: 100, height: 100, color: Colors.red),
              feedback: Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ))
        ]));
  }
}
