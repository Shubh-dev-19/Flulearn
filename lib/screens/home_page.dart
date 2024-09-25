import 'package:fluearn/main.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
            backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Text("MY App"),

        ),
         body: const Column(
           children: [
               Text('first Widgetl  ')
           ],
         ),
      ),
    );
  }
}

