import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

import '../introduction_pages/introduction_pages.dart';
import 'home.dart';

class AnimatedIntroductionSlider extends StatelessWidget {
  const AnimatedIntroductionSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'introduction Slider', //title of app
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //ThemeData
      home: Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          onTapDoneButton: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Home()));
          },
          pageButtonTextStyles:const TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ), //IntroViewsFlutter
      ), //Builder
    ); //Material App
  }
}
