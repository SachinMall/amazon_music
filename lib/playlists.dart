import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'const.dart';
import 'homepage2.dart';

class PlayLists extends StatefulWidget {
  final String imageUrl;
  final String name;
  const PlayLists({super.key, required this.imageUrl, required this.name});

  @override
  State<PlayLists> createState() => _PlayListsState();
}

class _PlayListsState extends State<PlayLists> {
  var songposter = [
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/519PULZL8YL._UX358_FMwebp_QL85_.jpg",
      "name": "Heeriye (feat.Arjit)",
      "subname": 'Jasleen ROyal, Arjit Singh',
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/51W+ry1SiuL._UX358_FMwebp_QL85_.jpg",
      "name": "Chaleya (From Jawan)",
      "subname": 'Anirudh Ravichander',
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/51wLCuP+p-L._UX358_FMwebp_QL85_.jpg",
      "name": "Apna Bana Le",
      "subname": 'Sachin-Jigar & Arijit Singh',
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/61KpJti1SzL._UX358_FMwebp_QL85_.jpg",
      "name": "Brahmastra",
      "subname": ' Amitabh Bhattacharya',
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/41zsVx0ZySL._UX358_FMwebp_QL85_.jpg",
      "name": "Tu Jhoothi Main Makkaar",
      "subname": 'Pritam',
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/512-jmrxmGL._UX358_FMwebp_QL85_.jpg",
      "name": "Still Rollen",
      "subname": 'Shubh',
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/51GR1Uo7TiL._UX358_FMwebp_QL85_.jpg",
      "name": "Jailer",
      "subname": 'VARIOUS ARTISTS',
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/51K4ntW97FL._UX358_FMwebp_QL85_.jpg",
      "name": "Zara Hatke Zara Bachke",
      "subname": 'Sachin-Jigar',
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/61ScBNlW3DL._UX358_FMwebp_QL85_.jpg",
      "name": "Rocky Aur Rani",
      "subname": 'Amitabh Bhattacharya',
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/61vODacya1L._UX358_FMwebp_QL85_.jpg",
      "name": "With You",
      "subname": 'AP Dhillon',
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/51W+ry1SiuL._UX358_FMwebp_QL85_.jpg",
      "name": "Jawan",
      "subname": 'Anirudh Ravichander',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Get.offAll(() => const HomePageS());
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  // height: 300,
                  child: Image.network(
                    widget.imageUrl,
                    fit: BoxFit.contain,
                    height: 250,
                  ),
                ),
              ),
              height15,
              Text(
                widget.name,
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
              height10,
              ListView.builder(
                // scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: songposter.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          leading: Image.network(
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
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
