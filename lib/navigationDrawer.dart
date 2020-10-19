import 'package:admin_login/widgets/createDrawerHeader.dart';
import 'package:flutter/material.dart';
import 'widgets/createDrawerBodyItem.dart';
import 'package:admin_login/routes/pageRoute.dart';

class NavigationDrawer extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Drawer(
     child: ListView(
       padding: EdgeInsets.zero,
       children: <Widget>[
         createDrawerHeader(),
         createDrawerBodyItem(
           icon: Icons.home,
           text: 'Home',
           onTap: () =>
               Navigator.pushReplacementNamed(context, PageRoutes.home),
         ),
         createDrawerBodyItem(
           icon: Icons.account_circle,
           text: 'Profile',
           onTap: () =>
               Navigator.pushReplacementNamed(context, PageRoutes.profile),
         ),

         createDrawerBodyItem(
           icon: Icons.event_note,
           text: 'Events',
           onTap: () =>
               Navigator.pushReplacementNamed(context, PageRoutes.event),
         ),
         Divider(),
         createDrawerBodyItem(
           icon: Icons.notifications_active,
           text: 'Services',
           onTap: () =>
               Navigator.pushReplacementNamed(context, PageRoutes.auto),
         ),
         createDrawerBodyItem(
           icon: Icons.info,
           text: 'About Us',
           onTap: () =>
               Navigator.pushReplacementNamed(context, PageRoutes.aboutus),
         ),
         createDrawerBodyItem(
           icon: Icons.contact_phone,
           text: 'Contact Info',
           onTap: () =>
               Navigator.pushReplacementNamed(context, PageRoutes.contact),
         ),
         createDrawerBodyItem(
           icon: Icons.person,
           text: 'Login',
           onTap: () =>
               Navigator.pushReplacementNamed(context, PageRoutes.login),
         ),
         ListTile(
           title: Text('App version 1.0.0'),
           onTap: () {},
         ),
       ],
     ),
   );
 }
}