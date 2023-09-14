import 'package:amazon_music/const.dart';
import 'package:amazon_music/seemore1.dart';
import 'package:amazon_music/widgets/allstars.dart';
import 'package:amazon_music/widgets/cards.dart';
import 'package:amazon_music/widgets/notification_icon.dart';
import 'package:amazon_music/widgets/podcast.dart';
import 'package:amazon_music/widgets/trendingSongs.dart';
import 'package:amazon_music/widgets/trendingplaylist.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/homepage_podcasts.dart';

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
    },
  ];

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
                  border: Border.all(color: kwhite, width: 0.4),
                ),
                child: const Center(
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
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: kwhite, width: 0.4)),
                child: const Center(
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
          padding: const EdgeInsets.only(left: 18),
          iconSize: 27,
          onPressed: () {
            Get.to(() => const NotificationIcon());
          },
          icon: const Icon(
            Icons.notifications,
            color: kwhite,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                backgroundColor: Colors.grey[1100],
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                context: context,
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () {
                      print("object");
                    },
                    child: const Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.directions_car_filled_rounded),
                          title: Text('Car Mode'),
                        ),
                        SizedBox(
                          width: 380,
                          child: Divider(
                              thickness: 0.1, color: Colors.white, height: 0.3),
                        ),
                        ListTile(
                          leading: Icon(Icons.toggle_off),
                          title: Text('Offline Mode'),
                        ),
                        SizedBox(
                          width: 380,
                          child: Divider(
                              thickness: 0.1, color: Colors.white, height: 0.3),
                        ),
                        ListTile(
                          leading: Icon(Icons.cast),
                          title: Text('Connected to a Device'),
                        ),
                        SizedBox(
                          width: 380,
                          child: Divider(
                              thickness: 0.1, color: Colors.white, height: 0.3),
                        ),
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Text('My Profile'),
                        ),
                        SizedBox(
                          width: 380,
                          child: Divider(
                              thickness: 0.1, color: Colors.white, height: 0.3),
                        ),
                        ListTile(
                          leading: Icon(Icons.settings),
                          title: Text('Settings'),
                        ),
                        SizedBox(
                          width: 380,
                          child: Divider(
                              thickness: 0.1, color: Colors.white, height: 0.3),
                        ),
                        ListTile(
                          leading: Icon(Icons.help),
                          title: Text('Help & Feedback'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Dismiss",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 18),
              child: Icon(
                Icons.settings,
                size: 27,
                color: kwhite,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/jq.jpg",
              fit: BoxFit.contain,
              width: double.infinity,
              height: 300.0,
            ),
            Positioned(
              top: 200,
              left: 20,
              right: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "STATION",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 23, 206, 247),
                        ),
                      ),
                      Text(
                        "My Soundtrack",
                        style: TextStyle(
                            fontSize: 26,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Based on Jubin Nautiyal, Talwiinder, Atif Aslam",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      print("Play");
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 26, 203, 247)),
                      child: const Icon(Icons.play_arrow, size: 42),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitlewithButton(
                    title: "Popular Hindi Songs",
                    buttonText: "SEE MORE",
                    onTap: () {
                      Get.to(() => const SeeMore1());
                    },
                  ),
                  height10,
                  ListView.builder(
                    // scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: songposter.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {},
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
                                    icon: const Icon(Icons.add),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.more_horiz),
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
                  TitlewithButton(
                    buttonText: 'SEE MORE',
                    title: 'Trending Playlists',
                    onTap: () {
                      Get.to(() => const HomePagePodcasts());
                    },
                  ),
                  height10,
                  const TrendingPlaylist(),
                  height10,
                  TitlewithButton(
                    buttonText: 'SEE MORE',
                    title: 'Start a Podcast Habit',
                    onTap: () {
                      Get.to(() => const HomePagePodcasts());
                    },
                  ),
                  height10,
                  const Podcasts(),
                  height10,
                  const SongCards(),
                  height15,
                  TitlewithButton(
                    buttonText: 'SEE MORE',
                    title: 'Trending Songs',
                    onTap: () {
                      Get.to(() => const HomePagePodcasts());
                    },
                  ),
                  const TrendingSongs(),
                  height10,
                  TitlewithButton(
                    buttonText: 'SEE MORE',
                    title: 'All Stars',
                    onTap: () {
                      Get.to(() => const HomePagePodcasts());
                    },
                  ),
                  const AllStarsPlayList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TitlewithButton extends StatelessWidget {
  final String title, buttonText;
  final void Function() onTap;

  const TitlewithButton(
      {super.key,
      required this.title,
      required this.buttonText,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: onTap,
            child: Container(
              height: 30,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[800],
              ),
              child: Center(
                child: Text(
                  buttonText,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
