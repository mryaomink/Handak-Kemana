import 'package:flutter/material.dart';
import 'package:kalsel_guide/widgets/footer_desk.dart';
import 'package:kalsel_guide/widgets/footer_mob.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: FooterSectionDesk(
        height: height,
        width: width,
      ),
      mobile: FooterSectionMob(
        width: width,
        height: height,
      ),
    );
  }
}
