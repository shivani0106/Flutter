import 'package:flutter/material.dart';
import 'package:admin_login/navigationDrawer.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/homePage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        drawer: NavigationDrawer(),
        body:SingleChildScrollView(
        child:Container(
          padding: EdgeInsets.fromLTRB(5, 10, 10, 5),
          margin: EdgeInsets.fromLTRB(20, 20, 20, 30),
            child:Column(
            children: [
              new SizedBox(
                height: 250,
              child:Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: const Text('History'),
                    subtitle: Text(
                      '______',
                        style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize:20),
                        ),
                      ),
                  Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Text(
                    'Add as many language packs as you want, to showcase your website across the entire globe.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ],
              ),
              ),
              ),
              new SizedBox(
                height: 300,
                child:Card(
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 10,
                child:Image.asset('assets/images/img1.jpg',height: 200, width:380)
                )
              ),//frist 

              new SizedBox(
                height: 250,
              child:Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: const Text('Who we are'),
                    subtitle: Text(
                      '______',
                        style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize:20),
                        ),
                      ),
                  Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Text(
                    'Add as many language packs as you want, to showcase your website across the entire globe.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ],
              ),
              ),
              ),
              new SizedBox(
                height: 280,
                child:Card( 
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 10,
                child:Image.asset('assets/images/img2.jpg',height: 230, width:380)
                )
              ),//second

              new SizedBox(
                height: 250,
              child:Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: const Text('What we do'),
                    subtitle: Text(
                      '______',
                        style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize:20),
                        ),
                      ),
                  Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Text(
                    'Add as many language packs as you want, to showcase your website across the entire globe.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ],
              ),
              ),
              ),
              new SizedBox(
                height: 300,
                child:Card( 
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 10,
                child:Image.asset('assets/images/img3.jpg',height: 200, width:380)
                )
              )
              ]
              ),
      ),
    )
    );
  }
}
