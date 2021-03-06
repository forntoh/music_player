import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_player/screens/home/home_screen.dart';
import 'package:music_player/theme/custom_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      theme: CustomTheme.darkTheme,
      home: HomeScreen(),
    );
  }
}
