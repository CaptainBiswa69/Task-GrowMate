import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Reactions extends StatelessWidget {
  const Reactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }

  Padding commentTile(
      String imagePtah, Color bordercolor, String user, String comment) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: bordercolor,
            child: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(imagePtah),
              ),
            ),
          ),
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
}
