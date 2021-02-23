import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextHeaderDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      // Positioned(
      //   left: 150,
      //   top: 50,
      //   child: Image.asset(
      //     "assets/images/party.png",
      //     fit: BoxFit.cover,
      //   ),
      // ),
      Container(
        color: Colors.blue.withOpacity(0.25),
        child: Align(
          alignment: Alignment.center,
          child: TyperAnimatedTextKit(
              isRepeatingAnimation: false,
              speed: Duration(milliseconds: 80),
              text: [
                "Baru Pertama x Berkunjung\nDi Kalimantan?,\nBingung cari Tempat Wisata,Kuliner",
                "Kami Hadir untuk membantu Kalian",
                "More Info Scroll Down"
              ],
              textStyle: GoogleFonts.montserratAlternates(
                  fontSize: 34,
                  color: Colors.white,
                  fontWeight: FontWeight.w800)),
        ),
      ),
      // Positioned(
      //   right: 150,
      //   bottom: 30,
      //   child: Container(
      //     width: 300,
      //     height: 300,
      //     child: FadeInImage.memoryNetwork(
      //       placeholder: kTransparentImage,
      //       image: "assets/images/peopleclub.png",
      //       fit: BoxFit.cover,
      //     ),
      //   ),
      // ),
    ]);
  }
}
