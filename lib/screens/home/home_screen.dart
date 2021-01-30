import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/screens/home/components/album_art_disk.dart';
import 'package:music_player/screens/home/components/music-control_button.dart';

import 'components/custom_app_bar.dart';
import 'components/music_controls.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Expanded(
            child: AlbumArtDisk(
              image: Image.network(
                  "https://www.indieisnotagenre.com/wp-content/uploads/glass-animals-dreamland-album-artwork.jpg"),
            ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Row(
              children: [
                ClickableIconButton(icon: CupertinoIcons.volume_mute,),
                Expanded(
                  child: Slider(
                    value: 65,
                    min: 0,
                    max: 100,
                    onChanged: (double value) {},
                  ),
                ),
                ClickableIconButton(icon: CupertinoIcons.volume_up, activeColor: Theme.of(context).accentColor,)
              ],
            ),
          ),
          SizedBox(height: 48,),
        ],
      ),
    );
  }
}