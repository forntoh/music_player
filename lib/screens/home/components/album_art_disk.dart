import 'dart:ui';

import 'package:flutter/material.dart';

import 'disk_clipper.dart';

class AlbumArtDisk extends StatelessWidget {
  const AlbumArtDisk({
    Key key, this.image,
  }) : super(key: key);

  final Image image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
      child: Stack(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              return Opacity(
                opacity: 0.25,
                child: Transform.translate(
                  offset: Offset(0, constraints.maxWidth / 2.5),
                  child: ClipPath(
                    clipper: DiskClipper(),
                    child: image,
                  ),
                ),
              );
            },
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
            child: ClipPath(
              clipper: DiskClipper(),
              child: image,
            ),
          ),
        ],
      ),
    );
  }
}
