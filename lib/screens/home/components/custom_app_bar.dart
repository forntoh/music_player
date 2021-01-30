import 'package:flutter/material.dart';
import 'package:music_player/constants.dart';
import 'package:music_player/theme/widgets.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {

  @override
  Size get preferredSize => Size.fromHeight(height);

  static const double height = 70;
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: preferredSize.height,
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(width: 48,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RotatedBox(
                    quarterTurns: 1,
                    child: Icon(Icons.chevron_right),
                  ),
                  SizedBox(height: 8),
                  Text('Now playing')
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: CustomWidgets.allRounded
              ),
              child: Icon(Icons.search),
            ),
          ],
        ),
      ),
    );
  }
}