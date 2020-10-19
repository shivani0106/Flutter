import 'package:flutter/material.dart';
import 'package:admin_login/navigationDrawer.dart';

class Nefty extends StatefulWidget {
  static const String routeName = '/nefty.dart';
  NeftyState createState() => NeftyState();
}

class NeftyState extends State<Nefty> {
  Widget build(BuildContext context) {
    

    return new Scaffold(
        appBar: AppBar(
          title: Text("Nefty"),
        ),
        drawer: NavigationDrawer(),
        body: SingleChildScrollView(
            child: new Container(
             child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                      child: Table(
                        //textDirection: TextDirection.ltr,
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        border:
                            TableBorder.all(width: 2.0, color: Colors.white),
                        children: [
                          TableRow(
                              decoration:
                                  BoxDecoration(color: Colors.blueGrey[300]),
                              children: [
                           Text("Auto",textScaleFactor: 1.5,style:new TextStyle(color: Colors.white),),
                                Text(
                                  "cement",
                                  textScaleFactor: 1.5,
                                  style: new TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Real-estate",
                                  textScaleFactor: 1.5,
                                  style: new TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Retail",
                                  textScaleFactor: 1.5,
                                  style: new TextStyle(color: Colors.white),
                                ),
                              ]),
                          TableRow(
                              decoration:
                                  BoxDecoration(color: Colors.blueGrey[300]),
                              children: [
                                Text(
                                  "Banking & Fin",
                                  textScaleFactor: 1.5,
                                  style: new TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "FMCG",
                                  textScaleFactor: 1.5,
                                  style: new TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Media",
                                  textScaleFactor: 1.5,
                                  style: new TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Meta",
                                  textScaleFactor: 1.5,
                                  style: new TextStyle(color: Colors.white),
                                ),
                              ]),
                          TableRow(
                              decoration:
                                  BoxDecoration(color: Colors.blueGrey[300]),
                              children: [
                                Text(
                                  "Oil & Petro",
                                  textScaleFactor: 1.5,
                                  style: new TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Pharma",
                                  textScaleFactor: 1.5,
                                  style: new TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Software",
                                  textScaleFactor: 1.5,
                                  style: new TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Telecom",
                                  textScaleFactor: 1.5,
                                  style: new TextStyle(color: Colors.white),
                                ),
                              ]),
                          TableRow(
                              decoration:
                                  BoxDecoration(color: Colors.blueGrey[300]),
                              children: [
                                Text(
                                  "Capital Goods",
                                  textScaleFactor: 1.5,
                                  style: new TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Shipping & Logistics",
                                  textScaleFactor: 1.5,
                                  style: new TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Sugar",
                                  textScaleFactor: 1.5,
                                  style: new TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Hotel",
                                  textScaleFactor: 1.5,
                                  style: new TextStyle(color: Colors.white),
                                ),
                              ]),
                        ],
                      ),
                    ),
                )));
  }
}