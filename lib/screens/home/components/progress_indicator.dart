import 'package:flutter/material.dart';
import 'package:music_player/theme/colors.dart';
import 'package:music_player/theme/widgets.dart';

class CustomProgressIndicator extends StatefulWidget {
  final ValueChanged<double> onProgressChange;

  const CustomProgressIndicator({
    Key key,
    this.onProgressChange,
  }) : super(key: key);

  @override
  _CustomProgressIndicatorState createState() => _CustomProgressIndicatorState();
}

class _CustomProgressIndicatorState extends State<CustomProgressIndicator>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: CustomColors.controls,
                borderRadius: CustomWidgets.allRounded,
              ),
              child: SizedBox(width: constraints.maxWidth, height: 5),
            ),
            Positioned(
              left: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: CustomWidgets.allRounded,
                ),
                child: SizedBox(width: constraints.maxWidth / 2, height: 5),
              ),
            ),
          ],
        );
      },
    );
  }
}