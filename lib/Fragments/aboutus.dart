import 'package:flutter/material.dart';
import 'package:admin_login/navigationDrawer.dart';

class AboutUsPage extends StatelessWidget {
 static const String routeName = '/aboutus';
 TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 18.0);

 @override
 Widget build(BuildContext context) {
   return new Scaffold(
     resizeToAvoidBottomPadding: false,
       appBar: AppBar(
         title: Text("About Us"),
       ),
       drawer: NavigationDrawer(),
       body: SingleChildScrollView(
         padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
            new Image.asset('assets/images/jay.png',
            height:130,
            width: 160,),
            new RichText(
              text: TextSpan(
              text: 'ZestechInc is dedicated to revive the geek in you and to provide a great battle ground for programmers who dream of making it big in the world of programming. ZestechInc, a Directi initiative is a website that helps in improving coding skills in many programming languages. At ZestechInc we aim to create a global community that believes in friendly competition and consistent learning.\n\n',
              style: TextStyle(color: Colors.black.withOpacity(1.0),fontWeight: FontWeight.w500),
              children: <TextSpan>[
              TextSpan(text: 'ZestechInc works on the principle of providing everyone with easy to share strategies, and useful tips in the form of tutorials, resources, etc. ZestechInc is not just a contest platform; it’s a community for aspiring programmers that provide a ground for constant practice and improvement, with a healthy dose of fun along the way. Different programming exercises and tutorials constantly challenge and engage the developer community across various geographies and enable knowledge expansion for developers.\n\n', style: TextStyle(fontWeight: FontWeight.w500)),
              TextSpan(text: 'ZestechInc also has an expert team of freelancers that bake up new problems and moderates forums. We provide programmers with the opportunity to benchmark their talent against peers. ZestechInc is where coders compete with each other to develop their individual skills on software solutions. Dynamic programming tutorials here are more diverse with more problems, more solutions, and more information than most of other websites in the same business. Over 25,000 people worldwide have joined ZestechInc so far, and we are always looking for more.'),
              ],
            ),
          )
      ]
    ),
    )
  );
 }
}