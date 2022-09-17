import 'package:flutter/material.dart';
import 'package:grow_mate/pages/feed.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: <Widget>[
              const Feed(),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.blue,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() => _currentIndex = index);
              _pageController.jumpToPage(index);
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage("assets/bottom/icons8-news.png"),
                    color: Colors.black,
                    size: 24,
                  ),
                  activeIcon: Container(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xffF21CC8), Color(0xffFD9FEB)]),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                        child: ImageIcon(
                          AssetImage("assets/bottom/icons8-news.png"),
                          color: Colors.white,
                          size: 24,
                        ),
                      )),
                  label: 'Personal'),
              BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage("assets/bottom/Markets.png"),
                    color: Colors.black,
                    size: 24,
                  ),
                  activeIcon: Container(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xffF21CC8), Color(0xffFD9FEB)]),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                        child: ImageIcon(
                          AssetImage("assets/bottom/Markets.png"),
                          color: Colors.white,
                          size: 24,
                        ),
                      )),
                  label: 'Personal'),
              BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage("assets/bottom/Portfolio.png"),
                    color: Colors.black,
                    size: 24,
                  ),
                  activeIcon: Container(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xffF21CC8), Color(0xffFD9FEB)]),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                        child: ImageIcon(
                          AssetImage("assets/bottom/Portfolio.png"),
                          color: Colors.white,
                          size: 24,
                        ),
                      )),
                  label: 'Personal'),
              BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage("assets/bottom/Profile.png"),
                    color: Colors.black,
                    size: 24,
                  ),
                  activeIcon: Container(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xffF21CC8), Color(0xffFD9FEB)]),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                        child: ImageIcon(
                          AssetImage("assets/bottom/Profile.png"),
                          color: Colors.white,
                          size: 24,
                        ),
                      )),
                  label: 'Personal'),
            ]));
  }
}
