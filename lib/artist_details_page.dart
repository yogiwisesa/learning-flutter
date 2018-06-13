import 'package:belajarflutter/models.dart';
import 'package:flutter/material.dart';
import 'package:belajarflutter/video_card.dart';

import 'dart:ui' as ui;

class ArtistDetailsPage extends StatelessWidget {
  ArtistDetailsPage(this.artist);
  final Artist artist;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image.asset(artist.backdropPhoto, fit: BoxFit.cover),
          new BackdropFilter(
            filter: new ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: new Container(
            color: Colors.black.withOpacity(0.5),
            child: _buildContent(),
          ),)
        ],
      ),
    );
  }

  Widget _buildContent() {
    return new SingleChildScrollView(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildAvatar(),
          _buildInfo(),
          _buildVideoScroller(),
        ],
      ),
    );
  }

  Widget _buildAvatar(){
    return new Container(
      width: 110.0,
      height: 110.0,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        border: new Border.all(color: Colors.white30)
      ),
      margin: const EdgeInsets.only(top: 32.0, left: 16.0),
      padding: const EdgeInsets.all(3.0),
      child: new ClipOval(
        child: new Image.asset(artist.avatar),
      ),
    );
  }

  Widget _buildInfo(){
    return new Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            "${artist.firstName}\n${artist.lastName}",
            style: new TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0
            ),
          ),
          new Text(
            artist.location,
            style: new TextStyle(
              color: Colors.white.withOpacity(0.85),
              fontWeight: FontWeight.w500
            ),
          ),
          new Container(
            color: Colors.white.withOpacity(0.85),
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            width: 225.0,
            height: 1.0,
          ),
          new Text(
            artist.biography,
            style: new TextStyle(
              color: Colors.white.withOpacity(0.85),
              height: 1.4
            ),
          )

        ],
      ),
    );
  }

  Widget _buildVideoScroller(){
    return new Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: new SizedBox.fromSize(
        size: new Size.fromHeight(245.0),
        child: new ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          itemCount: artist.videos.length,
          itemBuilder: (BuildContext context, int index){
            var video = artist.videos[index];
            return new VideoCard(video);
          },
        ),
      ),

    );
  }

}