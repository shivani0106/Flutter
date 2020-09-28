import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);
  static const String routeName = '/login';
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  String email;
  String password;
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        padding: EdgeInsets.all(16.0),
        child : Column(
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
          SizedBox(height: 45.0,),
          RaisedButton(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.purple[100]),
            ),
            child: Text("Login", style: style.copyWith(
                    fontWeight: FontWeight.bold)
                    ),
            onPressed: () {
              FirebaseAuth.instance
                  .signInWithEmailAndPassword(email: email, password: password)
                  .then((FirebaseUser) {
                Navigator.pushNamed(context, '/homePage');
              }).catchError((e) {
                print(e);
              });
            },
            color: Colors.purple[300],
            textColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 120.0, vertical: 10.0),
          ),
          SizedBox(height: 30.0,),
          RaisedButton(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.purple[100]),
            ),
            child: Text("Not Register yet?",style: style.copyWith(
                    fontWeight: FontWeight.bold,
                    )
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/singup');
            },
            color: Colors.purple[300],
            textColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 10.0),
          ),
        ],
      ),
      )
      
    );
  }
}
