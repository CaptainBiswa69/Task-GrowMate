import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grow_mate/models/related_news_tile.dart';

class Related extends StatelessWidget {
  const Related({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<RelatedNewsTile> data = [
      RelatedNewsTile(
          imagepath: "assets/pictures/Related1.png",
          news: "Liz Truss will be UK’s next Prime Minister?"),
      RelatedNewsTile(
          imagepath: "assets/pictures/Related2.png",
          news: "British Pound will fall after Prime Minister elections?"),
      RelatedNewsTile(
          imagepath: "assets/pictures/Related3.png",
          news: "LBritish Railway Strikes will end by before Sept. 2022?"),
      RelatedNewsTile(
          imagepath: "assets/pictures/Related1.png",
          news: "Liz Truss will be UK’s next Prime Minister?"),
      RelatedNewsTile(
          imagepath: "assets/pictures/Related2.png",
          news: "British Pound will fall after Prime Minister elections?"),
      RelatedNewsTile(
          imagepath: "assets/pictures/Related3.png",
          news: "LBritish Railway Strikes will end by before Sept. 2022?"),
    ];
    return GestureDetector(
      onTap: () {
        bottomSheet(context, data);
      },
      child: Column(
        children: [
          relatedNewsTile("assets/pictures/Related1.png",
              "Liz Truss will be UK’s next Prime Minister?"),
          relatedNewsTile("assets/pictures/Related2.png",
              "British Pound will fall after Prime Minister elections?"),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Text(
                  "more...",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(color: Color(0xff999999))),
                ),
              ))
        ],
      ),
    );
  }

  Padding relatedNewsTile(String imagePath, String news) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 370,
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffCED5DC)),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  child: Image(
                      height: double.infinity,
                      fit: BoxFit.fill,
                      image: AssetImage(imagePath)),
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 240,
                  child: Text(
                    news,
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(fontSize: 17)),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  bottomSheet(BuildContext context, List<RelatedNewsTile> data) {
    showBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
              height: MediaQuery.of(context).size.height - 380,
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 5,
                      width: 100,
                      decoration: BoxDecoration(
                          color: const Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(25)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Related",
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                  color: Color(0xff687684),
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold)),
                        ),
                        GestureDetector(
                          onTap: (() => Navigator.pop(context)),
                          child: const ImageIcon(
                              AssetImage("assets/icons/image-3.png")),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        ActionChip(
                            labelPadding:
                                const EdgeInsets.symmetric(horizontal: 15),
                            label: Text(
                              "Top",
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            onPressed: () {},
                            backgroundColor: Colors.black),
                        const SizedBox(
                          width: 20,
                        ),
                        ActionChip(
                            labelPadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            label: Text("Newest",
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                      color: Colors.white, fontSize: 15),
                                )),
                            onPressed: () {},
                            backgroundColor: const Color(0xff7D7D7D)),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 0.5,
                    color: Color(0xff2B2B2B),
                  ),
                  SizedBox(
                    height: 305,
                    child: SingleChildScrollView(
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            return relatedNewsTile(
                                data[index].imagepath, data[index].news);
                          }),
                    ),
                  )
                ])
              ]));
        });
  }
}
