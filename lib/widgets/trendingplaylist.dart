import 'package:amazon_music/homepage2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const.dart';
import '../playlists.dart';

class TrendingPlaylist extends StatefulWidget {
  const TrendingPlaylist({super.key});

  @override
  State<TrendingPlaylist> createState() => _TrendingPlaylistState();
}

class _TrendingPlaylistState extends State<TrendingPlaylist> {
  var images = [
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/512GZqoMYsL._SX354_SY354_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "50 Most Played:\nIndia",
      "subname": "Jasleen ROyal"
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/51ysLEbFI6L._SX354_SY354_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "50 Most Played: Hindi",
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
      "name": "2023 SO Far:India",
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

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 220,
      child: ListView.builder(
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {
                Get.to(() => PlayLists(
                      imageUrl: images[index]['imageUrl'].toString(),
                      name: images[index]["name"].toString(),
                    ));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }
}

class Playlists extends StatelessWidget {
  const Playlists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Get.to(() => const HomePageS());
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  // height: 300,
                  child: Image.network(
                    "https://m.media-amazon.com/images/I/512GZqoMYsL._UX358_FMwebp_QL85_.jpg",
                    fit: BoxFit.contain,
                    height: 250,
                  ),
                ),
              ),
              height15,
              Text(
                "50 Most Played:",
                style: GoogleFonts.archivoBlack(
                    fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Text(
                "India",
                style: GoogleFonts.archivoBlack(
                    fontSize: 32, fontWeight: FontWeight.bold),
              ),
              height10,
              Text(
                "Curated by Amazon's Music Experts",
                style: GoogleFonts.notoSerif(fontSize: 14),
              ),
              height5,
              Text(
                "The most listened to songs in India, updated every Friday.",
                style: TextStyle(fontSize: 13, color: Colors.grey[500]),
              ),
              Text(
                "Cover Track: Heeriye.",
                style: TextStyle(fontSize: 13, color: Colors.grey[500]),
              ),
              height10,
              Text(
                "50 SONGS : 3 HRS 18 MIN",
                style: TextStyle(fontSize: 13, color: Colors.grey[500]),
              ),
              height20,
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shuffle_rounded),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.file_download_outlined,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 120,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_circle_fill_outlined,
                      color: Color.fromARGB(255, 39, 231, 238),
                      size: 60,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
