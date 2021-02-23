import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MostvisDesk extends StatelessWidget {
  const MostvisDesk({
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
      height: height,
      color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Most Visited Place',
              style: GoogleFonts.montserratAlternates(
                  fontSize: 24, color: Colors.white),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  left: 150,
                  top: 80,
                  child: Image.asset(
                    "assets/images/womenbottom.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: ListWheelScrollView(
                    itemExtent: 313,
                    diameterRatio: 20,
                    children: [
                      Container(
                        height: 400,
                        width: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn.akurat.co/images/uploads/akurat_20170523_V623ig.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Banjarmasin, Kalimantan Selatan,Pasar Terapung adalah Pasar yang unik\nIkon Kalimantan Selatan\nyang sangat terkenal adalah budaya pasar terapung\nyaitu pasar yang memanfaatkan sungai\nsebagai lokasi dan jukung (perahu kecil/sampan) sebagai toko.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Container(
                        height: 400,
                        width: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1519193659/gunung_lawu_jpjsrw.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Bosan dengan wisata sungai? Maka kamu wajib untuk datang\nke wisata gunung yang satu ini. Gunung Halau – Halau\nMerupakan gunung tertinggi di Kalimantan  Selatan dengan ketinggian mencapai 1.901\nDiatas permukaan laut.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Container(
                        height: 400,
                        width: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://4.bp.blogspot.com/-GrMMQYa-2-M/WgUyhRkKMXI/AAAAAAAAAHI/cCgGUTks9fozdAOdaFXEltDbzDpy2XhxQCLcBGAs/s1600/scubadiver.co.id%2Bsamber%2Bgelap.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Pulau Samber Gelap Kotabaru,Kalsel\nPulau ini sangat kecil, tapi punya magis untuk menarik wisatawan.\nPasir putih, laut yang dangkal dan tenang, mercusuar\nSekaligus gardu pandang; semuanya membuat Pulau Samber Gelap sangat unik.\nDiving dan Snorkeling juga bisa dilakukan di sini\nKarena kekayaan biota lautnya',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
