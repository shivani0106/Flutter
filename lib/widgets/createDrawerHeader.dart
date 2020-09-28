import 'package:flutter/material.dart';

Widget createDrawerHeader() {
  return DrawerHeader(
    child: Column(
            children: <Widget>[
            new Image.asset('assets/images/pic1.png',
            height: 110,
            width: 600,
            ),
            new Text(
              "welcome to zestechinc",
              style: TextStyle(color: Colors.blue),
            )
            ]
    )
    );
}
