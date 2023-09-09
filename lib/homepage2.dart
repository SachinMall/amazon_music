import 'package:amazon_music/const.dart';
import 'package:amazon_music/seemore1.dart';
import 'package:amazon_music/widgets/allstars.dart';
import 'package:amazon_music/widgets/cards.dart';
import 'package:amazon_music/widgets/podcast.dart';
import 'package:amazon_music/widgets/trendingSongs.dart';
import 'package:amazon_music/widgets/trendingplaylist.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageS extends StatefulWidget {
  const HomePageS({super.key});

  @override
  State<HomePageS> createState() => _HomePageSState();
}

class _HomePageSState extends State<HomePageS> {
  var songposter = [
    {
      'imageUrl': "assets/images/Heeriye-Song-Poster.jpg",
      "name": "Heeriye (feat.Arjit)",
      "subname": 'Jasleen ROyal, Arjit Singh',
    },
    {
      'imageUrl': "assets/images/Chaleya.jpg",
      "name": "Chaleya (From Jawan)",
      "subname": 'Anirudh Ravichander',
    },
    {
      'imageUrl': "assets/images/Apna Bana le.jpeg",
      "name": "Apna Bana Le",
      "subname": 'Sachin-Jigar & Arijit Singh',
    }
  ];

  int _currentIndex = 0;
  onTabSwitch(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: kwhite)),
                child: Center(
                  child: Text(
                    "MUSIC",
                    style: fontsize,
                  ),
                ),
              ),
            ),
            kwidth5,
            InkWell(
              onTap: () {},
              child: Container(
                width: 130,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: kwhite)),
                child: Center(
                  child: Text(
                    "PODCASTS",
                    style: fontsize,
                  ),
                ),
              ),
            )
          ],
        ),
        backgroundColor: kblack,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(left: 18),
          iconSize: 27,
          onPressed: () {},
          icon: Icon(
            Icons.notifications,
            color: kwhite,
          ),
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 18),
            iconSize: 27,
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: kwhite,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Hindi Songs",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => SeeMore1());
                      },
                      child: Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey[800],
                        ),
                        child: Center(
                          child: Text(
                            "SEE MORE",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              height10,
              ListView.builder(
                // scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                // physics: AlwaysScrollableScrollPhysics(),
                itemCount: songposter.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      print('play');
                    },
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset(
                            songposter[index]["imageUrl"].toString(),
                            fit: BoxFit.contain,
                            height: 50,
                          ),
                          title: Text(songposter[index]['name'].toString()),
                          subtitle:
                              Text(songposter[index]['subname'].toString()),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_horiz),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              height15,
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trending Playlists",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey[800],
                        ),
                        child: Center(
                          child: Text(
                            "SEE MORE",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              height10,
              TrendingPlaylist(),
              height10,
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Start a Podcast Habit",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey[800],
                        ),
                        child: Center(
                          child: Text(
                            "SEE MORE",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              height10,
              Podcasts(),
              height10,
              SongCards(),
              height15,
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trending Songs",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey[800],
                        ),
                        child: Center(
                          child: Text(
                            "SEE MORE",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TrendingSongs(),
              height10,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "All Stars",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              12,
                            ),
                            color: Colors.grey[800]),
                        child: Center(
                          child: Text(
                            "SEE MORE",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              AllStarsPlayList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabSwitch,
        selectedItemColor: Colors.lightBlue[300],
        unselectedItemColor: Colors.grey[300],
        currentIndex: _currentIndex,
        backgroundColor: Colors.black,
        items: [
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
                Icons.library_music_sharp,
              ),
              label: "LIBRARY"),
        ],
      ),
    );
  }
}
