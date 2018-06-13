import 'package:belajarflutter/ui/artist_details_animator.dart';
import 'package:belajarflutter/ui/artist_details_page.dart';
import 'package:belajarflutter/data/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new ArtistsDetailsAnimator(),
    );
  }
}