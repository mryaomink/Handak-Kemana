import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

class OurServiceMob extends StatelessWidget {
  const OurServiceMob({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://wa.me/6285252742437';
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: width,
        height: height,
        color: Colors.black,
        child: Column(
          children: [
            Text(
              "Our Service",
              style: GoogleFonts.montserratAlternates(
                  fontSize: 22, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            Column(
              children: [
                NewWidget(
                  imgUrl:
                      "https://images.unsplash.com/photo-1533850595620-7b1711221751?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=814&q=80",
                ),
                Text(
                  'Hiking',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                FlatButton(
                    hoverColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white)),
                    onPressed: () => _launchInWebViewWithJavaScript(toLaunch),
                    child: Text(
                      "Hire Porter",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    )),
              ],
            ),
            Column(
              children: [
                NewWidget(
                  imgUrl:
                      "https://images.unsplash.com/photo-1438109491414-7198515b166b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
                ),
                Text(
                  'Photography',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                SizedBox(height: 8.0),
                FlatButton(
                    hoverColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white)),
                    onPressed: () => _launchInWebViewWithJavaScript(toLaunch),
                    child: Text(
                      "Hire Photographer",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    )),
              ],
            ),
            Column(
              children: [
                NewWidget(
                  imgUrl:
                      "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=353&q=80",
                ),
                Text(
                  'Wisata Kuliner',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                FlatButton(
                  hoverColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white)),
                  onPressed: () => _launchInWebViewWithJavaScript(toLaunch),
                  child: Text(
                    "Find Interest Place",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchInWebViewWithJavaScript(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}

class NewWidget extends StatelessWidget {
  final String imgUrl;
  final String txtTitle;

  const NewWidget({
    Key key,
    this.imgUrl,
    this.txtTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
              width: 180,
              height: 140,
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: imgUrl,
                fit: BoxFit.cover,
              )),
        ),
      ],
    );
  }
}
