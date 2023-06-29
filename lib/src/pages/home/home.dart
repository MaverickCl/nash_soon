import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nash_soon/src/pages/home/vista_general.dart';
import 'package:nash_soon/src/pages/home/vista_previa.dart';

import 'package:nash_soon/src/pages/routes.dart';

class HomePage extends StatelessWidget {
  static String route = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Estrenos'),
          backgroundColor: Colors.grey[300],
          foregroundColor: Colors.black,
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            height: 220,
            width: double.maxFinite,
            child: Card(
              elevation: 0.7,
              child: Column(
                children: <Widget>[
                  ListTile(
                    contentPadding: EdgeInsets.fromLTRB(15, 50, 25, 50),
                    title: Text('No Time To Die'),
                    subtitle: Text('24/09/2021'),
                    leading:  Row(children: [
                      SizedBox(
                        width: 100,
                        //height: ,
                        child: ClipRRect(
                          child: Image.network(
                            'images/poster007.jpg',
                          ),

                          borderRadius: BorderRadius.circular(10),
                        ),
                    ),
                    ],),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      Navigator.pushNamed(context, Vista.route);
                    },
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            height: 220,
            width: double.maxFinite,
            child: Card(
              elevation: 0.7,
              child: Column(
                children: <Widget>[
                  ListTile(
                    contentPadding: EdgeInsets.fromLTRB(15, 50, 25, 50),
                    title: Text('No Time To Die'),
                    subtitle: Text('24/09/2021'),
                    leading: Image.asset(
                      'images/poster007.jpg',
                    ),
                    trailing: Icon(Icons.chevron_right),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            height: 220,
            width: double.maxFinite,
            child: Card(
              elevation: 0.7,
              child: Column(
                children: <Widget>[
                  ListTile(
                    contentPadding: EdgeInsets.fromLTRB(15, 50, 25, 50),
                    title: Text('No Time To Die'),
                    subtitle: Text('24/09/2021'),
                    leading: Image.asset(
                      'images/poster007.jpg',
                    ),
                    trailing: Icon(Icons.chevron_right),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            height: 220,
            width: double.maxFinite,
            child: Card(
              elevation: 0.7,
              child: Column(
                children: <Widget>[
                  ListTile(
                    contentPadding: EdgeInsets.fromLTRB(15, 50, 25, 50),
                    title: Text('No Time Toie'),
                    subtitle: Text('24/09/2021'),
                    leading: Image.asset(
                      'images/poster007.jpg',
                    ), 
                    trailing: Icon(Icons.chevron_right),
                  )
                ],
              ),
            ),
          ),
        ]));
  }
}
