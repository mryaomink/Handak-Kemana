import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterSectionDesk extends StatelessWidget {
  const FooterSectionDesk({
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
      height: height / 3.1,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Copyright 2021@Yaomink',
                style: GoogleFonts.montserratAlternates(
                    fontSize: 14.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.w300),
              ),
              Text(
                'Supported By',
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w300),
              ),
              InkWell(
                onTap: () {
                  _alibabaCloud();
                },
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image:
                      ('https://albertoroura.com/wp-content/uploads/2019/06/ad-ac.png'),
                  fit: BoxFit.cover,
                ),
              ),
              InkWell(
                onTap: () {
                  _codePolitan();
                },
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image:
                      ('https://ruko.s3.ap-southeast-1.amazonaws.com/rumahkomunitas.com/komunitas/lg_091218082347_24471_74eecacf22614aefb17dfd382b55f7744cdb3e2e_codepolitan_m.png'),
                  fit: BoxFit.cover,
                  width: 80,
                  height: 80,
                ),
              ),
              InkWell(
                onTap: () {
                  _reCloud();
                },
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image:
                      ('https://re-cloud.id/assets/images/re-cloud/re-cloud_black.png'),
                  fit: BoxFit.cover,
                  width: 173.28,
                  height: 30,
                ),
              ),
            ],
          ),
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
                    size: 40,
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
                    size: 40,
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
                    size: 40,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

_alibabaCloud() async {
  const url = 'https://www.alibabacloud.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Url Tidak Valid $url';
  }
}

_codePolitan() async {
  const url = 'https://www.codepolitan.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Url Tidak Valid $url';
  }
}

_reCloud() async {
  const url = 'https://re-cloud.id/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Url Tidak Valid $url';
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
