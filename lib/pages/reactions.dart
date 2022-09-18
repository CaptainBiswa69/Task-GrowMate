import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grow_mate/models/comment_tile.dart';

class Reactions extends StatelessWidget {
  const Reactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CommentTile> commentData = [
      CommentTile(
          name: 'Prof.alison   1h ago',
          description:
              "If China does indeed attack Taiwan soon, October is the likely time since the Taiwan Strait waters will be calm, facilitating amphibious operations. The drills around Taiwan allowed China to build up forces in Fujian, which is part of what's needed before an invasion.",
          imagepath: "assets/pictures/pic1.png"),
      CommentTile(
          name: "TomBN   3h ago",
          description:
              "I will be surprised if #China will in fact attack Taiwan. Doing so requires lots of courage, which China lacks.",
          imagepath: "assets/pictures/pic2.png"),
      CommentTile(
          name: 'Prof.alison   1h ago',
          description:
              "If China does indeed attack Taiwan soon, October is the likely time since the Taiwan Strait waters will be calm, facilitating amphibious operations. The drills around Taiwan allowed China to build up forces in Fujian, which is part of what's needed before an invasion.",
          imagepath: "assets/pictures/pic1.png"),
      CommentTile(
          name: "TomBN   3h ago",
          description:
              "I will be surprised if #China will in fact attack Taiwan. Doing so requires lots of courage, which China lacks.",
          imagepath: "assets/pictures/pic2.png"),
    ];
    return GestureDetector(
      onTap: () {
        bottomSheet(context, commentData);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      width: 15,
                    ),
                    ImageIcon(
                      AssetImage("assets/icons/mention.png"),
                      color: Color(0xff687684),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "215",
                      style: TextStyle(fontSize: 18, color: Color(0xff687684)),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    ImageIcon(AssetImage("assets/icons/comments.png"),
                        color: Color(0xff687684)),
                    Text(
                      "95K",
                      style: TextStyle(fontSize: 18, color: Color(0xff687684)),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: ImageIcon(AssetImage("assets/icons/Group_39.png"),
                    color: Color(0xff687684)),
              ),
            ],
          ),
          commentTile(
              "assets/pictures/pic1.png",
              const Color(0xffE432C1),
              "Linda ",
              'If China does indeed attack Taiwan soon, October is the likely  time sice the'),
          commentTile(
              "assets/pictures/pic2.png",
              const Color(0xffC4C4C4),
              "TomBN ",
              'I will be surprised if #China will in fact attack Taiwan. Doing so requires lot of'),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(80, 10, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Add a Comment...",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          color: Color(0xff999999), fontSize: 12)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text("😍 😭"),
                    SizedBox(
                      width: 3,
                    ),
                    ImageIcon(
                      AssetImage(
                        "assets/icons/plus.png",
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding commentTile(
      String imagePtah, Color bordercolor, String user, String comment) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        children: [
          commentTileUserProfile(bordercolor, imagePtah, 26),
          const SizedBox(
            width: 15,
          ),
          SizedBox(width: 250, child: commentText(user, comment)),
          Column(
            children: [
              const Text(""),
              Text(
                "more",
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        color: const Color(0xff000000).withOpacity(0.5))),
              )
            ],
          )
        ],
      ),
    );
  }

  CircleAvatar commentTileUserProfile(
      Color bordercolor, String imagePtah, double rad) {
    return CircleAvatar(
      radius: rad,
      backgroundColor: bordercolor,
      child: CircleAvatar(
        radius: rad - 2,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: rad - 4,
          backgroundImage: AssetImage(imagePtah),
        ),
      ),
    );
  }

  RichText commentText(String user, String comment) {
    return RichText(
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        style: GoogleFonts.lato(
          textStyle: const TextStyle(
            fontSize: 16.0,
            color: Colors.black,
          ),
        ),
        children: [
          TextSpan(
              text: user,
              style: GoogleFonts.lato(
                  textStyle: const TextStyle(fontWeight: FontWeight.bold))),
          TextSpan(
            text: comment,
          ),
        ],
      ),
    );
  }

  bottomSheet(BuildContext context, List<CommentTile> data) {
    showBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: MediaQuery.of(context).size.height - 380,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 7,
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
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Reactions",
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
                                      color: Colors.white, fontSize: 18),
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
                                        color: Colors.white, fontSize: 18),
                                  )),
                              onPressed: () {},
                              backgroundColor: const Color(0xff7D7D7D))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: const Color(0xffF8F8F8),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: RichText(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                              ),
                            ),
                            children: [
                              const TextSpan(
                                text:
                                    "Remember to keep comments respectful and to follow our ",
                              ),
                              TextSpan(
                                  text: "Comunity Guidelines.",
                                  style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                          color: Color(0xff1A73FD)))),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    AssetImage("assets/pictures/Round.png"),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Add a Comment...",
                                style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                        color: Color(0xff999999),
                                        fontSize: 12)),
                              ),
                            ],
                          ),
                          const ImageIcon(AssetImage("assets/icons/plus.png"))
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Color(0xff2B2B2B),
                    ),
                    SizedBox(
                      height: 215,
                      child: SingleChildScrollView(
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemCount: data.length,
                            itemBuilder: (context, index) {
                              return fullCommentTile(
                                  data[index].name,
                                  data[index].description,
                                  data[index].imagepath);
                            }),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        });
  }

  Padding fullCommentTile(String name, String description, String imagePath) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 10, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          commentTileUserProfile(const Color(0xffE432C1), imagePath, 18),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12),
                  )),
              const SizedBox(
                height: 3,
              ),
              SizedBox(
                width: 300,
                child: Text(description,
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(fontSize: 12),
                    )),
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: const [
                  ImageIcon(
                    AssetImage("assets/icons/Like.png"),
                    color: Color(0xff636363),
                  ),
                  ImageIcon(
                    AssetImage("assets/icons/Dislike.png"),
                    color: Color(0xff636363),
                  ),
                  ImageIcon(
                    AssetImage("assets/icons/Like3.png"),
                    color: Color(0xff636363),
                  ),
                ],
              ),
              Text("5 REPLIES",
                  style: GoogleFonts.lato(
                    textStyle:
                        const TextStyle(fontSize: 10, color: Color(0xff1A73FD)),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
