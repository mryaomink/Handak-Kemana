import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transparent_image/transparent_image.dart';

class TripForyouDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.black,
        child: Stack(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blue,
                width: MediaQuery.of(context).size.width / 3.5,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Center(
                    child: Text(
                      "Recommended Trip",
                      style: GoogleFonts.montserratAlternates(
                          fontSize: 24,
                          color: Colors.white,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 275,
                  height: 440,
                  child: TripCardList(),
                ),
              ),
            ],
          ),
          Positioned(
            left: 220,
            top: 280,
            child: Image.asset(
              "assets/images/couple.png",
              fit: BoxFit.cover,
              width: 400,
              height: 400,
            ),
          ),
        ]));
  }
}

class TripCardList extends StatelessWidget {
  final List<String> imgUrl = [
    "https://sgp1.digitaloceanspaces.com/tz-mag-id/wp-content/uploads/2018/07/080807074343/wisata-banjarmasin-14-1024x700.jpg",
    "https://ngadem.com/wp-content/uploads/2016/04/Pulau-Birah-Birahan-Kotabaru-Kalimantan-Selatan-foto-dari-@batu.betina.jpg",
    "https://phinemo.com/wp-content/uploads/2018/01/11078938_918851964845865_1059859079_n.jpg",
    "https://sgp1.digitaloceanspaces.com/tz-mag-id/wp-content/uploads/2018/07/080807070707/wisata-banjarmasin-8-819x1024.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    final List<String> myTitle = [
      "The Beauty of View",
      "Pulau Birah-Birahan",
      "Bukit Lebak Naga",
      "Pasar Terapung",
    ];
    final List<String> mySub = [
      "Banjarmasin",
      "Kotabaru",
      "Kandangan",
      "Banjarmasin",
    ];
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Stack(
          children: [
            Container(
              height: 420,
              width: 300,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: imgUrl[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Container(
                  color: Colors.black.withOpacity(0.2),
                  child: Text(
                    myTitle[index],
                    style: GoogleFonts.montserratAlternates(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: 74,
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.blue,
                    size: 16,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                    color: Colors.white.withOpacity(0.4),
                    child: Text(
                      mySub[index],
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
