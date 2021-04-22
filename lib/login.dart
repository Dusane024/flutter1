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
 final _key=GlobalKey<FormState>();
 moveToHome(BuildContext context)async{
   if(_key.currentState.validate()){
     {setState(() {
       button=true;
     });
     await Future.delayed(Duration(seconds: 1));
     Navigator.pushNamed(context, MyRoutes.homeRoute);

     }

   }
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),

      ),
      body: Center(
        child:SingleChildScrollView(


        child: Form(
          key: _key,
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
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Enter Username",

                  labelText: "E-mail",
                  border: OutlineInputBorder(),

                ),
                validator: (value){
                  if (value.isEmpty) {
                    return "Enter Valid email";

                }
                  return null;
                },
                onChanged: (value){
                  name=value;
                  setState(() {
                  });
                },
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value.length<6){
                    return "Password should minimum six length";
                  }
                  return null;
                },


              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
            Material(
              color: Colors.red,
              borderRadius: BorderRadius.circular(button?50:20),
              child: InkWell(

                onTap :() => moveToHome(context),
              child:AnimatedContainer(

                duration: Duration(seconds:1),
                height: 50,
                width: 80,
                alignment: Alignment.center,

                child:button?Icon(Icons.done)
                : Text("Login",style: TextStyle(
                  fontSize: button?20:28,
                color: Colors.white),

                ),
                // decoration: BoxDecoration(
                //   color: Colors.white70,
                //   borderRadius: BorderRadius.circular(8),
                //
                //
                // ),
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
          ),





    );
  }
}
