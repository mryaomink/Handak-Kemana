import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterSectionMob extends StatelessWidget {
  const FooterSectionMob({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height / 4,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Follow Us',
                style: GoogleFonts.montserratAlternates(
                    fontSize: 14.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500),
              ),
              InkWell(
                onTap: () {
                  _goFb();
                },
                child: Container(
                  child: FaIcon(
                    FontAwesomeIcons.facebookSquare,
                    color: Colors.blue,
                    size: 30,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _goYt();
                },
                child: Container(
                  child: FaIcon(
                    FontAwesomeIcons.youtube,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _goIg();
                },
                child: Container(
                  child: FaIcon(
                    FontAwesomeIcons.instagramSquare,
                    color: Colors.purple,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Copyright 2021@Yaomink',
            style: GoogleFonts.montserratAlternates(
                fontSize: 14.0,
                color: Colors.blue,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}

_goFb() async {
  const url = 'https://www.facebook.com/haxcer';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Url Tidak Valid $url';
  }
}

_goIg() async {
  const url = 'https://www.instagram.com/yaomink_12';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Url Tidak Valid $url';
  }
}

_goYt() async {
  const url = 'https://www.youtube.com/channel/UCRJOlzD0G-bCPqysovSFldg';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Url Tidak Valid $url';
  }
}
