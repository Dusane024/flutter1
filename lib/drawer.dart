import 'package:flutter/material.dart';
class Mydrawer extends StatefulWidget {
  @override
  _MydrawerState createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
final url="https://images.unsplash.com/photo-1617791160512-45c186e50c5a?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
color: Colors.red,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text("RD"
            ), accountEmail: Text("RD@123"),
            currentAccountPicture: CircleAvatar(
               backgroundImage: NetworkImage(url),
            ),


            ),
            ListTile(

              leading: Icon(Icons.person_outlined,color:Colors.white,),
              title: Text("Name",textScaleFactor: 1.2,style: TextStyle(

                color: Colors.white
              ),),
              trailing: Icon(Icons.add_circle_outline,color: Colors.white,),
            ),
            ListTile(

              leading: Icon(Icons.person),
              title: Text("Add"),

              trailing: Icon(Icons.add_circle_outline),

            )
          ],
        ),
      ),
    );
  }
}
