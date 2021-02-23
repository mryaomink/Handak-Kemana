import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          height: height,
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image:
                "https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    );
  }
}
