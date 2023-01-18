import 'package:flutter/material.dart';
import 'package:online_platform/screen/homepage.dart';
import 'package:online_platform/screen/hotstar.dart';
import 'package:online_platform/screen/netflix.dart';
import 'package:online_platform/screen/voot.dart';
import 'package:online_platform/screen/zee5.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const OnlinePlatform(),
        'Netflix': (context) => const Netflix(),
        'zee5': (context) => const Zee5(),
        'HotStar': (context) => const HotStar(),
        'voot': (context) => const Voot(),
      },
    ),
  );
}
