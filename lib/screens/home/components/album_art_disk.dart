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
                opacity: 0.2,
                child: Transform.translate(
                  offset: Offset(0, constraints.maxWidth / 2),
                  child: ClipPath(
                    clipper: DiskClipper(),
                    child: image,
                  ),
                ),
              );
            },
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
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
