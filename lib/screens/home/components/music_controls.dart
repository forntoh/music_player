import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/theme/colors.dart';

import 'music-control_button.dart';
import 'progress_indicator.dart';

class ExtendedControls extends StatelessWidget {
  const ExtendedControls({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          MusicControlButton(icon: CupertinoIcons.gobackward, isAlwaysActive: true,),
          MainControls(),
          MusicControlButton(icon: CupertinoIcons.list_bullet, isAlwaysActive: true,),
        ],
      ),
    );
  }
}

class MainControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  CustomProgressIndicator(),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text('01:50', style: Theme.of(context).textTheme.overline.apply(color: CustomColors.light_blue)),
                      Spacer(),
                      Text('03:45', style: Theme.of(context).textTheme.overline),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 24,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MusicControlButton(
                  icon: CupertinoIcons.backward_end_alt_fill,
                ),
                MusicControlButton(
                  icon: CupertinoIcons.backward_fill,
                ),
                MusicControlButton(
                  icon: CupertinoIcons.play_fill,
                  isMainIcon: true,
                ),
                MusicControlButton(
                  icon: CupertinoIcons.forward_fill,
                ),
                MusicControlButton(
                  icon: CupertinoIcons.forward_end_alt_fill,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}