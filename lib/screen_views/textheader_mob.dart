import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextHeaderMob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.withOpacity(0.60),
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
            textStyle: GoogleFonts.aBeeZee(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.w800)),
      ),
    );
  }
}
