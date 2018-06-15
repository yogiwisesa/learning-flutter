import 'dart:math';

import 'package:belajarflutter/bottom_control.dart';
import 'package:belajarflutter/songs.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios),
          color: const Color(
            0xFFDDDDDD,
          ),
          onPressed: () {},
        ),
        title: new Text(""),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.menu),
            color: const Color(
              0xFFDDDDDD,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: new Column(children: <Widget>[
        // seekbar
        new Expanded(
          child: new Center(
            child: new Container(
              width: 125.0,
              height: 125.0,
              child: new ClipOval(
                clipper: CircleClipper(),
                child: new Image.network(
                  demoPlaylist.songs[0].albumArtUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),

        // visualizr
        new Container(
          width: double.infinity,
          height: 125.0,
        ),

        // song info
        new BottomControl(),
      ]),
    );
  }
}


