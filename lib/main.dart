import 'package:flutter/material.dart';
import 'package:kalsel_guide/sections/about_section.dart';
import 'package:kalsel_guide/sections/footer_section.dart';
import 'package:kalsel_guide/sections/hero_section.dart';
import 'package:kalsel_guide/sections/mostvisit_section.dart';
import 'package:kalsel_guide/sections/our_service.dart';
import 'package:kalsel_guide/sections/trip_foryou.dart';
import 'package:kalsel_guide/widgets/text_header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Handak Kemana',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: YaominkHome());
  }
}

class YaominkHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Material(
        color: Colors.black,
        child: Stack(alignment: Alignment.center, children: [
          HeroSection(width: width, height: height),
          TextHeader(),
          Scrollbar(
            radius: Radius.circular(10),
            isAlwaysShown: false,
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height,
                    ),
                    AboutSection(width: width, height: height),
                    TripForyou(),
                    OurService(width: width, height: height),
                    MostVisit(width: width, height: height),
                    FooterSection(width: width, height: height),
                  ],
                ),
              ],
            ),
          ),
        ]));
  }
}
