import 'package:flutter/material.dart';
class C extends StatefulWidget {
  @override
  _CState createState() => _CState();
}

class _CState extends State<C> {
  String n="";

  @override

  Widget build(BuildContext context) {
    return Center(






      child:SingleChildScrollView(



        child: Card(
             child:Padding(
            padding: const EdgeInsets.all(8),

            child: Column(

              children: <Widget>[
                Image.asset('asserts/baby.jpg'),
                SizedBox(
                  height: 10,
                  width: 10,
                ),


                Text(
                  "Baby Name $n",style: TextStyle(
                  fontWeight: FontWeight.bold,
                 fontSize: 20,
                ),


                ),


                SizedBox(
                  height: 10,
                  width: 10,
                ),
                TextField(
                    keyboardType:TextInputType.text,

                    decoration:InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Name",
                      labelText: "Name",

                    ),
                  onChanged: (value){
                      n=value;
                      setState(() {

                      });

                  },







                ),



              ],



            ),


          ),
        ),
      ),

    );
  }
}
