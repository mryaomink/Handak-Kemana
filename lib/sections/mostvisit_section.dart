import 'package:flutter/material.dart';
import 'package:kalsel_guide/screen_views/mostvis_desk.dart';
import 'package:kalsel_guide/screen_views/mostvis_mob.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MostVisit extends StatelessWidget {
  const MostVisit({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MostvisMob(
        height: height,
        width: width,
      ),
      desktop: MostvisDesk(
        height: height,
        width: width,
      ),
    );
  }
}
