import 'package:admin_login/Fragments/auto.dart';
import 'package:admin_login/Fragments/nefty.dart';
import 'package:admin_login/Fragments/sensex.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:admin_login/routes/pageRoute.dart';
import 'Fragments/HomePage.dart';
import 'Fragments/ContactPage.dart';
import 'Fragments/EventPage.dart';
import 'Fragments/services.dart';
import 'Fragments/profilePage.dart';
import 'Fragments/aboutus.dart';
import 'Fragments/login.dart';
import 'Fragments/singup.dart';
import 'Fragments/productMaster.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: HomePage(),
      routes: {
        PageRoutes.home: (context) => HomePage(),
        PageRoutes.contact: (context) => ContactPage(),
        PageRoutes.event: (context) => EventPage(),
        PageRoutes.profile: (context) => ProfilePage(),
        PageRoutes.todo: (context) => ServicePage(),
        PageRoutes.aboutus: (context) => AboutUsPage(),
        PageRoutes.login: (context) => Login(),
        PageRoutes.singup:(context) => Singup(),
        PageRoutes.nefty:(context) => Nefty(),
        PageRoutes.sensex:(context) => Sensex(),
        PageRoutes.auto:(context) => Auto(),
        PageRoutes.product:(context) => ProductMaster(),
      },
    );
  }
}
