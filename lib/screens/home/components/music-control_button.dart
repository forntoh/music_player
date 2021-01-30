import 'package:flutter/material.dart';
import 'package:music_player/theme/colors.dart';
import 'package:music_player/theme/widgets.dart';

class MusicControlButton extends StatelessWidget {
  const MusicControlButton({
    Key key,
    this.icon,
    this.isMainIcon = false,
    this.onTap,
    this.isAlwaysActive = false,
  }) : super(key: key);

  final IconData icon;
  final bool isAlwaysActive;
  final bool isMainIcon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: isMainIcon
          ? Container(
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
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(width: 2, height: 2),
                  Icon(icon, color: Colors.white, size: 18),
                ],
              ),
            )
          : IconButton(
              icon: icon,
              activeColor:
                  isAlwaysActive ? Colors.white : CustomColors.controls,
            ),
    );
  }
}

class ClickableIconButton extends StatelessWidget {
  const ClickableIconButton({
    Key key,
    this.onTap, 
    this.icon, 
    this.activeColor = CustomColors.controls,
  }) : super(key: key);

  final Color activeColor;
  final IconData icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: IconButton(iconSize: 18, icon: icon, activeColor: activeColor),
    );
  }
}

class IconButton extends StatelessWidget {
  const IconButton(
      {Key key,
      this.icon,
      this.iconSize = 22,
      this.size = 40,
      this.activeColor = CustomColors.controls,
    }) : super(key: key);

  final Color activeColor;
  final IconData icon;
  final double iconSize;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Icon(
        icon,
        color: activeColor,
        size: iconSize,
      ),
    );
  }
}
