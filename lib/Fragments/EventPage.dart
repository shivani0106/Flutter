import 'package:flutter/material.dart';
import 'package:admin_login/navigationDrawer.dart';

class EventPage extends StatelessWidget {
 static const String routeName = '/eventPage';

 @override
 Widget build(BuildContext context) {
   return new Scaffold(
       appBar: AppBar(
         title: Text("Events"),
       ),
       drawer: NavigationDrawer(),
       body:SingleChildScrollView(
       child: Column(
         children: <Widget>[
            new Image.asset('assets/images/event1.jpeg',
            height: 500,
            width: 700,
            ),
            new Image.asset('assets/images/services.jpeg',
            height: 500,
            width: 600,
            ),
            new Image.asset('assets/images/technolgy.jpeg',
            height: 500,
            width: 600,
            ),
         ]
       )
   ));
 }
}