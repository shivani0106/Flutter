import 'package:admin_login/Fragments/ContactPage.dart';
import 'package:admin_login/Fragments/EventPage.dart';
import 'package:admin_login/Fragments/HomePage.dart';
import 'package:admin_login/Fragments/login.dart';
import 'package:admin_login/Fragments/services.dart';
import 'package:admin_login/Fragments/profilePage.dart';
import 'package:admin_login/Fragments/aboutus.dart';
import 'package:admin_login/Fragments/singup.dart';


class PageRoutes {
 static const String home = HomePage.routeName;
 static const String contact = ContactPage.routeName;
 static const String event = EventPage.routeName;
 static const String profile = ProfilePage.routeName;
 static const String todo = ServicePage.routeName;
 static const String aboutus = AboutUsPage.routeName;
 static const String login = Login.routeName;
static const String singup = Singup.routeName;
}