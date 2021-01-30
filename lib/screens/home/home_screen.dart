import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:music_player/screens/home/components/album_art_disk.dart';

import 'components/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          AlbumArtDisk(
            image: Image.network("https://i.pinimg.com/originals/32/73/89/32738914c481eaf5a1f893fd833afa48.jpg"),
          ),
          Text(
            'Jowo',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            'Rihana',
            style: Theme.of(context).textTheme.bodyText2,
          )
        ],
      ),
    );
  }
}