import 'package:amazon_music/const.dart';

import 'package:flutter/material.dart';

class HomePageS extends StatefulWidget {
  const HomePageS({super.key});

  @override
  State<HomePageS> createState() => _HomePageSState();
}

class _HomePageSState extends State<HomePageS> {
  var songposter = [
    {
      'imageUrl': "assets/images/Heeriye-Song-Poster.jpg",
      "name": "Heeriye (feat. Arjit Singh)",
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
  var trending = [
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/41Ca4Ui2xpL._SX472_SY472_BL0_QL100__UX56_FMwebp_QL85_.jpg",
      "name": "Jaane Jaa (Teaser)",
      "subname": 'Dj Chetas, Atif Aslam & Asees Kaur',
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/51T5laRvDpL._SX472_SY472_BL0_QL100__UX56_FMwebp_QL85_.jpg",
      "name": "Kotha Raja",
      "subname": 'Jakes Bejoy, Asal Kolaar, Dabzee, Roll',
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/414advfEpOL._SX472_SY472_BL0_QL100__UX56_FMwebp_QL85_.jpg",
      "name": "Dhundhala",
      "subname": 'Dropped Out, Yashraj & Talwiinder',
    }
  ];

  var images = [
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/512GZqoMYsL._SX354_SY354_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "50 Most Played",
      "subname": "Jasleen ROyal"
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/51ysLEbFI6L._SX354_SY354_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "50 Most Played",
      "subname": "Jasleen ROyal..."
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/61tkH1CB10L._SX354_SY354_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "Desi Vibes",
      "subname": "Anirudh Ravichander.."
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/51+0+gU6m9L._SX354_SY354_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "2023 SO Far",
      "subname": "Arijit Singh..."
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/51-P5nNV6iL._SX354_SY354_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "Ultimate Love Song",
      "subname": "Sachin-Jigar"
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/51CKbAmFHEL._SX354_SY354_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "Hot Right Now",
      "subname": " Neha Kakka"
    },
  ];

  var Podcast = [
    {
      "imageUrl":
          "https://m.media-amazon.com/images/S/dmp-catalog-images-prod/images/36648046-4b18-48ce-9143-80983c54f831/36648046-4b18-48ce-9143-80983c54f831-266026965._SX768_SY768_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "Be A Man, Yaar!",
      "subname": "Yuvaa Originals"
    },
    {
      "imageUrl":
          "https://m.media-amazon.com/images/S/dmp-catalog-images-prod/images/64f93ee5-d3f8-4617-9bd7-edd32793b0a8/64f93ee5-d3f8-4617-9bd7-edd32793b0a8--663261983._SX768_SY768_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "Shappit Haveil",
      "subname": "Sachin Kumar"
    },
    {
      "imageUrl":
          "https://m.media-amazon.com/images/S/dmp-catalog-images-prod/images/22beb43b-f9df-409a-ba19-4c7d3222a484/22beb43b-f9df-409a-ba19-4c7d3222a484--603414041._SX768_SY768_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "Veerana",
      "subname": "Gouri Shankar Sarswat"
    },
    {
      "imageUrl":
          "https://m.media-amazon.com/images/S/dmp-catalog-images-prod/images/28cea2ac-5157-4068-98b8-df376d6ee2ce/28cea2ac-5157-4068-98b8-df376d6ee2ce-95524303._SX768_SY768_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "Road No. 12",
      "subname": "Manish Singh"
    },
    {
      "imageUrl":
          "https://m.media-amazon.com/images/S/dmp-catalog-images-prod/images/bdc8a861-9a67-4f80-9276-3ea863357b31/bdc8a861-9a67-4f80-9276-3ea863357b31--1494116104._SX768_SY768_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "Pyaar ka Takraar",
      "subname": "Anuradh Yadav"
    },
    {
      "imageUrl":
          "https://m.media-amazon.com/images/S/dmp-catalog-images-prod/images/da78110f-45b1-436f-82c2-9714e092ec89/da78110f-45b1-436f-82c2-9714e092ec89--155788079._SX768_SY768_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "Leela",
      "subname": "Divya Singh"
    },
    {
      "imageUrl":
          "https://m.media-amazon.com/images/S/dmp-catalog-images-prod/images/8758eb1c-1457-4758-ac9e-b869db7e853d/8758eb1c-1457-4758-ac9e-b869db7e853d-675762403._SX768_SY768_BL0_QL100__UX358_FMwebp_QL85_.jpeg",
      "name": "The Stories of Mah..",
      "subname": "Sudipta Bhawmik"
    }
  ];

  var cards = [
    {"imageUrl": "assets/images/1.jpg"},
    {"imageUrl": "assets/images/2.jpg"},
    {"imageUrl": "assets/images/3.jpeg"},
    {"imageUrl": "assets/images/4.jpg"}
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.all(8),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Hindi Songs",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      InkWell(
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
                  height10,
                  ListView.builder(
                    shrinkWrap: true,
                    // physics: AlwaysScrollableScrollPhysics(),
                    itemCount: songposter.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
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
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
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
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 200,
                    child: ListView.builder(
                      itemCount: images.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: GestureDetector(
                            child: Column(
                              children: [
                                Image.network(
                                  images[index]['imageUrl'].toString(),
                                  fit: BoxFit.contain,
                                  height: 140,
                                ),
                                height10,
                                Text(images[index]['name'].toString()),
                                height2,
                                Text(
                                  images[index]['subname'].toString(),
                                  style: TextStyle(color: Colors.grey[500]),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  height10,
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Start a Podcast Habit",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
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
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 200,
                    child: ListView.builder(
                      itemCount: images.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: GestureDetector(
                            child: Column(
                              children: [
                                Image.network(
                                  Podcast[index]['imageUrl'].toString(),
                                  fit: BoxFit.contain,
                                  height: 140,
                                ),
                                height10,
                                Text(Podcast[index]['name'].toString()),
                                height2,
                                Text(
                                  Podcast[index]['subname'].toString(),
                                  style: TextStyle(color: Colors.grey[500]),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  height10,
                  Container(
                    height: 200,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: cards.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                                cards[index]["imageUrl"].toString()),
                          ),
                        );
                      },
                    ),
                  ),
                  height15,
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Trending Songs",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
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
                  ListView.builder(
                    shrinkWrap: true,
                    // physics: AlwaysScrollableScrollPhysics(),
                    itemCount: songposter.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          ListTile(
                            leading: Image.network(
                              trending[index]["imageUrl"].toString(),
                              fit: BoxFit.contain,
                              height: 50,
                            ),
                            title: Text(trending[index]['name'].toString()),
                            subtitle:
                                Text(trending[index]['subname'].toString()),
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
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
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
