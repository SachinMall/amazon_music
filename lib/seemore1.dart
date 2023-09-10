import 'package:flutter/material.dart';

class SeeMore1 extends StatefulWidget {
  const SeeMore1({super.key});

  @override
  State<SeeMore1> createState() => _SeeMore1State();
}

class _SeeMore1State extends State<SeeMore1> {
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
        centerTitle: true,
        title: const Text("Popular Hindi SOngs"),
      ),
      body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              ListView.builder(
                // scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: songposter.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Image.network(
                          songposter[index]["imageUrl"].toString(),
                          fit: BoxFit.contain,
                          height: 50,
                        ),
                        title: Text(songposter[index]['name'].toString()),
                        subtitle: Text(songposter[index]['subname'].toString()),
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
                  );
                },
              ),
            ],
          )),
    );
  }
}
