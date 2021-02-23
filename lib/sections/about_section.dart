import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://wa.me/6285252742437';
    return Container(
      color: Colors.black,
      width: width,
      height: height,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.network(
                  "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=889&q=80",
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TypewriterAnimatedTextKit(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 26.0,
                    ),
                    repeatForever: true,
                    text: [
                      "Are You Ready For New Adventure",
                      "Kami Hadir Menemani para Visitor atau Wisatawan Yang Bingung",
                      "Mencari Tempat Wisata menarik untuk dikunjungi",
                      "Kami juga menyediakan Photographer Handal",
                      "untuk mengabadikan momen seru kalian",
                      "Wisata jadi lebih asyik ditemani orang-orang profesional dan berpengalaman",
                      "Ayo Segera Hubungi kami"
                    ],
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 250,
                  height: 60,
                  child: FlatButton(
                    hoverColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.blue)),
                    onPressed: () => _launchInWebViewWithJavaScript(toLaunch),
                    child: Text(
                      'Contact Us',
                      style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Spacer()
        ],
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
