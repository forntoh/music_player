import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/screens/home/components/album_art_disk.dart';

import 'components/custom_app_bar.dart';
import 'components/music_controls.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          AlbumArtDisk(
            image: Image.network(
                "https://ocdn.eu/images/pulscms/MmU7MDA_/ca65c477e4705eced44358d45f0e8c9c.jpg"),
          ),
          Text(
            'Fem',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            'Davido',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          SizedBox(height: 24,),
          ExtendedControls(),
        ],
      ),
    );
  }
}