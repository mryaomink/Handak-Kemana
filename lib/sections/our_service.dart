import 'package:flutter/material.dart';
import 'package:kalsel_guide/widgets/ourservice_desk.dart';
import 'package:kalsel_guide/widgets/ourservice_mob.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OurService extends StatelessWidget {
  const OurService({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: OurServiceDesk(
        height: height,
        width: width,
      ),
      mobile: OurServiceMob(
        height: height,
        width: width,
      ),
    );
  }
}
