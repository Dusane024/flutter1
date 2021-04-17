import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1_app/main.dart';
import 'package:flutter1_app/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
 bool button =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),

      ),
      body: Center(
        child:SingleChildScrollView(


        child: Column(
          children: <Widget>[
            Image.asset('asserts/login..png',
            fit: BoxFit.fill,),
            Text("Welcome $name",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            fontSize: 30)),


            SizedBox(
              height: 20,
              width: 20,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Enter Username",

                labelText: "E-mail",
                border: OutlineInputBorder(),

              ),
              onChanged: (value){
                name=value;
                setState(() {
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
                border: OutlineInputBorder(),
              ),

            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
          InkWell(

            onTap:()async
            {setState(() {
              button=true;
            });
            await Future.delayed(Duration(seconds: 1));
            Navigator.pushNamed(context, MyRoutes.homeRoute);  
            },

          child:AnimatedContainer(
            duration: Duration(seconds:1),
            height: 50,
            width: 80,

            child:button?Icon(Icons.done)
            : Text("Login",style: TextStyle(
              fontSize: 30,
            color: Colors.white70),

            ),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8),


            ),
            ),
              


            ),


/*            ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
*/
  ],
),
            ),
          ),





    );
  }
}
