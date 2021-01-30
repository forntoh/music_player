import 'package:flutter/material.dart';
import 'package:music_player/constants.dart';
import 'package:music_player/theme/colors.dart';
import 'package:music_player/theme/widgets.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {

  @override
  Size get preferredSize => Size.fromHeight(height);

  static const double height = 92;
  
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
                    child: Icon(Icons.chevron_right, color: CustomColors.light_blue,),
                  ),
                  SizedBox(height: 8),
                  Text('Now playing', style: Theme.of(context).textTheme.subtitle2,),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: CustomColors.light_blue.withAlpha(70),
                borderRadius: CustomWidgets.allRounded,
              ),
              child: Icon(Icons.search),
            ),
          ],
        ),
      ),
    );
  }
}