import 'package:flutter/material.dart';
import 'package:admin_login/navigationDrawer.dart';
import 'package:admin_login/routes/pageRoute.dart';

class ServicePage extends StatefulWidget {
  static const String routeName = '/servicepage';
  ServiceState createState() => ServiceState();
}

class ServiceState extends State<ServicePage> {
  var list = ["Home", "Overview", "news"];
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        appBar: AppBar(
          title: Text("Services"),
        ),
        drawer: NavigationDrawer(),
        body: SingleChildScrollView(
            child: new Container(
                constraints: BoxConstraints(minWidth: 400.0, minHeight: 800.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/services_bg.jpg"),
                        fit: BoxFit.cover)),
                child: SafeArea(
                  child:
                      Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
                    Row(
                      children: <Widget>[
                        Row(
                          children: List.generate(2, (index) {
                            return GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.all(8),
                                child: Text(list[index + 1]),
                              ),
                            );
                          }),
                        )
                      ],
                    ),
                    Row(children: <Widget>[
                      Container(
                        margin: const EdgeInsets.fromLTRB(100, 50, 00, 20),
                        child: RaisedButton(
                          child: Text("NIFTY"),
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, PageRoutes.nefty);
                          },
                          color: Colors.blueGrey[300],
                          textColor: Colors.white,
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          splashColor: Colors.grey,
                          highlightColor: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Container(
                          margin: const EdgeInsets.fromLTRB(00, 50, 80, 20),
                          child: RaisedButton(
                            child: Text("SENSEX"),
                            onPressed:(){
                               Navigator.pushReplacementNamed(
                                context, PageRoutes.sensex);
                            },
                            color: Colors.blueGrey[300],
                            textColor: Colors.white,
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            splashColor: Colors.grey,
                            highlightColor: Colors.black,
                          ))
                    ]),
                  ]),
                ))));
  }
}
