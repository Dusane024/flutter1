import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter1_app/botton.dart';
import 'package:flutter1_app/center.dart';
import 'package:flutter1_app/drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter1_app/login.dart';
import 'package:flutter1_app/routes.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.white));
  runApp(MaterialApp(
    title: "Baby Care",
    // home: My(),
    theme: ThemeData(
      primarySwatch: Colors.red,

    ),
    debugShowCheckedModeBanner: false,
    initialRoute: MyRoutes.homeRoute,
    routes: {
      MyRoutes.loginRoute: (context) => LoginPage(),
      MyRoutes.homeRoute: (context) => My(),
    },
  ));
}

class My extends StatefulWidget {
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<My> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          "Baby Care",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),
      body: C(),
      drawer: Mydrawer(),
      floatingActionButton: Fb(),
    );
  }
}
