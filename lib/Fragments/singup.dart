import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Singup extends StatefulWidget {
  Singup({Key key}) : super(key: key);
  static const String routeName = '/singup';

  @override
  SingupState createState() => SingupState();
}

class SingupState extends State<Singup> {
  final _firestore = FirebaseFirestore.instance;

  String email;
  String password;
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 45.0,),
          TextField(
            decoration: InputDecoration(labelText: "Email",
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
            ),
            onChanged: (value) {
              setState(() {
                email = value;
              });
            },
          ),
          SizedBox(height: 45.0,),
          TextField(
            decoration: InputDecoration(labelText: "Password",
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
            ),
            onChanged: (value) {
              setState(() {
                password = value;
              });
            },
            obscureText: true,
          ),
          SizedBox(height: 40),
          RaisedButton(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.purple[100]),
            ),
            child: Text("Register",
            style: style.copyWith(
                    color: Colors.black54, fontWeight: FontWeight.bold)
            ),
            color: Colors.purple[300],
            textColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 120.0, vertical: 10.0),
            onPressed: () {
              FirebaseAuth.instance
                  .createUserWithEmailAndPassword(
                      email: email, password: password)
                  .then((singInUser) {
                _firestore
                    .collection('admins')
                    .add({'email': email, 'password': password}).then((value) {
                  if (singInUser != null) {
                    Navigator.pushNamed(context, '/homePage');
                  }
                }).catchError((e) {
                  print(e);
                });
              }).catchError((e) {
                print(e);
              });
            },
          ),
        ],
      ),

      )
      
    );
  }
}
