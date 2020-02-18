import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: "Friendlychat",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Double Entry Bookkeeping"),
        ),
        drawer: new Drawer(
          child: new Column(
              children: <Widget>[
                const UserAccountsDrawerHeader(
                  accountName: const Text('JG'),
                  accountEmail: const Text('jiexing.jg@gmail.com'),
                  currentAccountPicture: const CircleAvatar(
                    backgroundImage: const NetworkImage(
                        'https://avatars2.githubusercontent.com/u/5022480?s=400&u=4e1d662c77ac14e14f7a0387aca08728a22ee587&v=4'),
                  ),
                  margin: EdgeInsets.zero,
                )
              ]
          ),
        ),
      ),
    ),
  );
}