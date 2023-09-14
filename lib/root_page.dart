import 'package:amazon_music/find.dart';
import 'package:amazon_music/homepage2.dart';
import 'package:amazon_music/library_page.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  var pageoptions = [
    const HomePageS(),
    const Find(),
    const LibraryPage(),
  ];

  int _currentIndex = 0;
  void onTabSwitch(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageoptions[_currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BottomNavigationBar(
          onTap: onTabSwitch,
          selectedItemColor: Colors.lightBlue[300],
          unselectedItemColor: Colors.grey[300],
          currentIndex: _currentIndex,
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "HOME"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_sharp,
                ),
                label: "FIND"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_sharp,
                ),
                label: "LIBRARY"),
          ],
        ),
      ),
    );
  }
}
