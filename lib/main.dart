import 'package:fluearn/screens/home_page.dart';
import 'package:fluearn/screens/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        initialRoute: '/login', // Define the initial route
        routes: {
          '/login': (context) => LoginPage(),  // Define route for Login Page
          '/home': (context) => HomePage(),    // Define route for Home Page
        },
        debugShowCheckedModeBanner: false,
      )
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome back"),
        ),
      ),


    );
  }
}
