import 'package:flutter/material.dart';
class Mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(accountName: Text("RD"
          ), accountEmail: Text("RD@123"),
          currentAccountPicture: CircleAvatar(
             backgroundImage: NetworkImage("https://images.unsplash.com/photo-1617791160512-45c186e50c5a?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
          ),


          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Name"),
            trailing: Icon(Icons.add_circle_outline),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Add"),

            trailing: Icon(Icons.add_circle_outline),

          )
        ],
      ),
    );
  }
}
