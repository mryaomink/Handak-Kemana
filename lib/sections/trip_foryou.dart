import 'package:flutter/material.dart';
import 'package:kalsel_guide/screen_views/textforyou_mob.dart';
import 'package:kalsel_guide/screen_views/tripforyou_desk.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TripForyou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: TripForyouDesk(),
      mobile: TripForyouMob(),
    );
  }
}
