import 'package:flutter/material.dart';
import 'package:kalsel_guide/screen_views/textheader_desktop.dart';
import 'package:kalsel_guide/screen_views/textheader_mob.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: TextHeaderMob(),
      desktop: TextHeaderDesk(),
    );
  }
}
