import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReasearchAndNews extends StatelessWidget {
  ReasearchAndNews({Key? key}) : super(key: key);
  late MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: queryData.size.width / 20.57,
              vertical: queryData.size.height / 82.05),
          child: Text(
            "215 Expert Opinion",
            style: TextStyle(
                color: Color(0xff687684),
                fontSize: queryData.size.width / 27.42,
                fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: queryData.size.width / 20.57,
                    vertical: queryData.size.height / 164.1),
                child: CircleAvatar(
                  radius: queryData.size.width / 9.14,
                  backgroundColor: const Color(0xffC930C5).withOpacity(0.1),
                  child: CircleAvatar(
                    radius: queryData.size.width / 11.74,
                    backgroundColor: const Color(0xffC930C5).withOpacity(0.2),
                    child: const Text(
                      "12%",
                      style: TextStyle(
                          color: Color(0xffC930C5),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                pollData(context, const Color(0xffE432C1), 12, "12% Buy Yes"),
                const SizedBox(
                  height: 12,
                ),
                pollData(context, const Color(0xff687684), 88, "88% Buy No"),
                const SizedBox(
                  height: 12,
                ),
                pollData(context, const Color(0xff687684), 1, "1% No Resolve"),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 6.3,
          child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return bottomCard("Thehill", "1st Sept",
                    "Last week,the dire warnings that appered in the Wall Street Journal, The Economistand Foreign Affairs about China's imminent war with or hello");
              })),
        )
      ],
    );
  }

  Padding bottomCard(String heading, String date, String description) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: queryData.size.width / 41.14),
      child: SizedBox(
        width: queryData.size.width / 1.58,
        child: Stack(
          children: [
            Card(
              elevation: 3,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            heading,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color(0xff080808)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            date,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 13),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: queryData.size.height / 10.94,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: queryData.size.width / 41.14),
                        child: Text(
                          description,
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                  fontSize: queryData.size.width / 31.64)),
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ]),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 5),
              child: Align(
                alignment: Alignment.bottomRight,
                child: ImageIcon(
                  AssetImage("assets/icons/Tracciato_38-3.png"),
                  color: Colors.black,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 2),
              child: Align(
                alignment: Alignment.bottomRight,
                child: ImageIcon(
                  AssetImage("assets/icons/Tracciato_37-3.png"),
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row pollData(
      BuildContext context, Color color, int value, String stringData) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: queryData.size.height / 102.56,
              width: MediaQuery.of(context).size.width / 2.5,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(queryData.size.width / 16.45),
                color: const Color(0xffD9D9D9),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(microseconds: 800),
              height: queryData.size.height / 102.56,
              width: (MediaQuery.of(context).size.width / 2.5) * value / 100,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(queryData.size.width / 16.45),
                color: color,
              ),
            ),
          ],
        ),
        SizedBox(
          width: queryData.size.width / 41.14,
        ),
        Text(
          stringData,
          style: TextStyle(
              color: color,
              fontSize: queryData.size.width / 41.14,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
