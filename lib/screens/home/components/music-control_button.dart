import 'package:flutter/material.dart';
import 'package:music_player/theme/colors.dart';
import 'package:music_player/theme/widgets.dart';

class MusicControlButton extends StatelessWidget {
  const MusicControlButton({
    Key key,
    this.icon,
    this.isMainIcon = false, this.onTap, this.isAlwaysActive = false,
  }) : super(key: key);

  final IconData icon;
  final bool isMainIcon;
  final bool isAlwaysActive;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: isMainIcon ? Container(
        width: 40,
        height: 40,
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: CustomWidgets.allRoundedSmall,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).accentColor.withAlpha(60),
              offset: Offset(5, 16),
              blurRadius: 20,
              spreadRadius: 3,
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(width: 2, height: 2,),
            Icon(icon, color: Colors.white, size: 18,),
          ],
        ),
      ) : SizedBox(
        width: 40,
        height: 40,
        child: Icon(icon, color: isAlwaysActive ? Colors.white : CustomColors.controls, size: 22,),
      ),
    );
  }
}
