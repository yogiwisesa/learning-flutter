import 'dart:math';

import 'package:belajarflutter/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomControl extends StatelessWidget {
  const BottomControl({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      child: new Material(
        // MATERIAL HARUS NGEWRAP BUTTON
        color: accentColor,
        shadowColor: const Color(0x44000000),
        child: new Padding(
          padding: const EdgeInsets.only(top: 40.0, bottom: 50.0),
          child: new Column(
            children: <Widget>[
              new RichText(
                  text: new TextSpan(text: "", children: [
                new TextSpan(
                    text: "Song title\n",
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4.0,
                        height: 1.5)),
                new TextSpan(
                    text: "Artist Name",
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        letterSpacing: 3.0,
                        height: 1.5))
              ])),
              new Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new Container(),
                    ),
                    new PreviousButton(),
                    new Expanded(
                      child: new Container(),
                    ),
                    new PlayButton(),
                    new Expanded(
                      child: new Container(),
                    ),
                    new NextButton(),
                    new Expanded(
                      child: new Container(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class PlayButton extends StatelessWidget {
  const PlayButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new RawMaterialButton(
      shape: new CircleBorder(),
      fillColor: Colors.white,
      splashColor: lightAccentColor,
      highlightColor: lightAccentColor.withOpacity(0.5),
      elevation: 10.0,
      highlightElevation: 5.0,
      onPressed: () {
        //TODO:
      },
      child: new Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Icon(
          Icons.play_arrow,
          color: darkAccentColor,
          size: 35.0,
        ),
      ),
    );
  }
}

class PreviousButton extends StatelessWidget {
  const PreviousButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new IconButton(
        splashColor: lightAccentColor,
        highlightColor: Colors.transparent,
        icon: new Icon(
          Icons.skip_previous,
          color: Colors.white,
          size: 35.0,
        ),
        onPressed: () {
          // TODO:,
        });
  }
}

class NextButton extends StatelessWidget {
  const NextButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new IconButton(
        // AGAR SPLASH COLOR & HIGHLIGHTCOLOR BERFUNGSI, HARUS DIWRAP DIDALAM MATERIAL
        splashColor: lightAccentColor,
        highlightColor: Colors.transparent,
        icon: new Icon(
          Icons.skip_next,
          color: Colors.white,
          size: 35.0,
        ),
        onPressed: () {
          // TODO:
        });
  }
}

class CircleClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return new Rect.fromCircle(
      center: new Offset(size.width / 2, size.height / 2),
      radius: min(size.width, size.height) / 2,
    );
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
