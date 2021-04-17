import 'package:flutter/material.dart';
class C extends StatelessWidget {
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
                  "Baby Name"
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

                    ) ),

              ],


            ),


          ),
        ),
      ),

    );
  }
}
