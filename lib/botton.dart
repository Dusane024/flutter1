import 'package:flutter/material.dart';
import 'package:flutter1_app/routes.dart';
class Fb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: (){

      Navigator.pushNamed(context, MyRoutes.homeRoute);
    },
    child: Icon(Icons.refresh),
    );
   }
}
