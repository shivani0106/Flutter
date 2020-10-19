import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:admin_login/routes/pageRoute.dart';

class ProductMaster extends StatelessWidget {
  static const String routeName = '/product';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection("Product_Master")
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.data == null) return CircularProgressIndicator();
            return ListView.builder(
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot category = snapshot.data.docs[index];
                  return ListTile(
                    leading: RaisedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, PageRoutes.aboutus);
                    },
                    child:new Text(category.data()['ProductName'])
                  ));
                });
          }),
    );
  }
}
