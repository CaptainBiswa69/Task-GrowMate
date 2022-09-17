import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                const Positioned(
                    child: SizedBox(
                  width: 500,
                  child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage("assets/main_view/main.png")),
                )),
                Positioned(
                    child: Container(
                  height: 332,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black87])),
                )),
                Positioned(
                    top: 260,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                          child: SizedBox(
                            width: 300,
                            child: Text(
                                "Will China invade Taiwan before end september? ",
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        const ImageIcon(
                          AssetImage("assets/icons/Filter_1.png"),
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    )),
                const Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ImageIcon(
                      AssetImage("assets/icons/arrow.png"),
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            portfolio()
          ],
        ),
      ),
    );
  }

  Stack portfolio() {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          height: 90,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff2E20DB), Color(0xffE432C1)])),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 70,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Text("CHANCE",
                                  style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text("11%",
                              style: GoogleFonts.montserratAlternates(
                                textStyle: const TextStyle(
                                    fontSize: 33,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 28, 0, 0),
                      child: ImageIcon(
                        AssetImage("assets/icons/image-2.png"),
                        color: Color(0xff21FFAA),
                        size: 50,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 38, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("24H",
                                style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                        color: Colors.white, fontSize: 11))),
                            Text(
                              "+25495\$",
                              style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                      color: Colors.white, fontSize: 11)),
                            )
                          ],
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text("\$09",
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              )),
                          const SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                              height: 25,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: const Color(0xff21FFAA)),
                                  onPressed: () {},
                                  child: const Text(
                                    "Yes",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  )))
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text("\$89",
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              )),
                          const SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                              height: 25,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: const Color(0xffE432C1)),
                                  onPressed: () {},
                                  child: const Text(
                                    "No",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  )))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Column(
            children: const [
              ImageIcon(
                AssetImage("assets/icons/Tracciato_780.png"),
                color: Color(0xff0CF2B4),
                size: 40,
              )
            ],
          ),
        )
      ],
    );
  }
}