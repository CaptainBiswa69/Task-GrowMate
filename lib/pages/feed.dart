import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grow_mate/pages/reactions.dart';
import 'package:grow_mate/pages/reasearch_news.dart';
import 'package:grow_mate/pages/related.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    child: SizedBox(
                  width: 500,
                  height: MediaQuery.of(context).size.height / 2.75,
                  child: const Image(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/main_view/main.png")),
                )),
                Positioned(
                    child: Container(
                  height: MediaQuery.of(context).size.height / 2.75,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black87])),
                )),
                Positioned(
                    top: MediaQuery.of(context).size.height / 3.56,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                          child: SizedBox(
                            width: 280,
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
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 6.32,
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
            portfolio(context),
            tabBar()
          ],
        ),
      ),
    );
  }

  Expanded tabBar() {
    return Expanded(
      child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 0.8))),
                child: const TabBar(
                    isScrollable: true,
                    unselectedLabelStyle:
                        TextStyle(fontWeight: FontWeight.bold),
                    unselectedLabelColor: Color(0xff687684),
                    labelColor: Color(0xffE432C1),
                    indicatorWeight: 3,
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    tabs: [
                      Tab(
                        text: "  Research & News  ",
                      ),
                      Tab(
                        text: "  Reactions  ",
                      ),
                      Tab(
                        text: "   Related  ",
                      ),
                    ],
                    indicatorSize: TabBarIndicatorSize.label),
              ),
              Expanded(
                child: TabBarView(
                  children: [ReasearchAndNews(), Reactions(), Related()],
                ),
              )
            ],
          )),
    );
  }

  Stack portfolio(BuildContext context) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          height: MediaQuery.of(context).size.height / 10.25,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff2E20DB), Color(0xffE432C1)])),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6.85,
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
                            height: 1,
                          ),
                          Text("11%",
                              style: GoogleFonts.montserratAlternates(
                                textStyle: const TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          0, MediaQuery.of(context).size.width / 17.14, 0, 0),
                      child: ImageIcon(
                        const AssetImage("assets/icons/image-2.png"),
                        color: const Color(0xff21FFAA),
                        size: MediaQuery.of(context).size.width / 8.22,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(
                            0, MediaQuery.of(context).size.width / 12.85, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("24H",
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                37.4))),
                            Text(
                              "+25495\$",
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              37.4)),
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
                                textStyle: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 18.7,
                                  color: Colors.white,
                                ),
                              )),
                          const SizedBox(
                            height: 4,
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height / 32.82,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: const Color(0xff21FFAA)),
                                  onPressed: () {},
                                  child: Text(
                                    "Yes",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                22.85),
                                  )))
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 41.14,
                      ),
                      Column(
                        children: [
                          Text("\$89",
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 18.7,
                                  color: Colors.white,
                                ),
                              )),
                          const SizedBox(
                            height: 4,
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height / 32.82,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: const Color(0xffE432C1)),
                                  onPressed: () {},
                                  child: Text(
                                    "No",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                22.85),
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
          alignment: Alignment.topCenter,
          child: Image(
            height: MediaQuery.of(context).size.height / 10.25,
            width: MediaQuery.of(context).size.width / 5.87,
            fit: BoxFit.fitWidth,
            image: const AssetImage("assets/icons/flying_coins.png"),
            color: const Color(0xff0CF2B4).withOpacity(0.3),
          ),
        )
      ],
    );
  }
}
