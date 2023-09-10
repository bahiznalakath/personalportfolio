import 'package:flutter/material.dart';
import 'package:portfolio/screens/main/main_screen.dart';
import 'componets/HighLightsInfo.dart';
import 'componets/MyProjects.dart';
import 'componets/Recommendations.dart';
import 'home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      HomeBanner(),
      HighLightsInfo(),
      MyProjects(),
      // Recommendations(),

    ]);
  }
}
