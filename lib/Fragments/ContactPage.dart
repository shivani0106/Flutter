import 'package:flutter/material.dart';
import 'package:admin_login/navigationDrawer.dart';


class ContactPage extends StatelessWidget {
  static const String routeName = '/contactPage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
      ),
      drawer: NavigationDrawer(),
      body: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox.fromSize(
              size:Size(70,70),
               // button width and height
                  child: ClipOval(
                      child: Material(
                        color: Colors.orange, // button color
                          child: InkWell(
                            splashColor: Colors.green, // splash color
                            onTap: () {}, // button pressed
                            child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Icon(Icons.call), // icon
                        Text("Call"),// text
                      ],
                    ),
                  ),
                ),
              ),

            ),
            Text("+91 9824218108",
            style: TextStyle(fontWeight: FontWeight.w700),
            ),

            SizedBox.fromSize(
              size: Size(70, 70), // button width and height
              child: ClipOval(
                child: Material(
                  color: Colors.orange, // button color
                  child: InkWell(
                    splashColor: Colors.green, // splash color
                    onTap: () {}, // button pressed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Icon(Icons.mail_outline), // icon
                        Text("email"),// text
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Text("jayyparmar@zestechinc.com",
            style: TextStyle(fontWeight: FontWeight.w700),
            ),
          
          SizedBox.fromSize(
              size: Size(250, 120),
                child: ClipRect(
                  child:Material(
                  color: Colors.blue[200], 
                  child:Center(
                    child:RichText(
                     text: TextSpan(
                        text: '                 Address\n\n', style: TextStyle(color: Colors.black.withOpacity(1.0),fontWeight: FontWeight.w700),
                          children: <TextSpan>[
                          TextSpan(text: '93, Panchvati Park,\n', style: TextStyle(fontWeight: FontWeight.w500)),
                          TextSpan(text: 'Nr. Panchvati Hall,Street No - 3,\n'),
                          TextSpan(text: 'Behind Shreenathji Tower,\n'),
                          TextSpan(text: 'Rajkot - 360001, Gujarat\n'),
                          ],
                      ),
                    )
                  )
                ),
              ),
          ),

        SizedBox.fromSize(
              size: Size(280, 100),
                child: ClipRect(
                child:Material(
                    color: Colors.blue[200], 
                    child:Center(
                    child: RichText(
                      text: TextSpan(
                        text: '                           Timing\n\n', style: TextStyle(color: Colors.black.withOpacity(1.0),fontWeight: FontWeight.w700,),
                        children: <TextSpan>[
                        TextSpan(text: 'Monday to Saturday – 8:00 am to 8:00 pm ,\n', style: TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(text: 'Technical support by email : 24 hours \n'),
                        ],
                      ),
                    )
                  )
                )
              )
        )
          ]
          ),
    ));
  }
}
