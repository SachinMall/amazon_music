import 'package:flutter/material.dart';

class HomePagePodcasts extends StatefulWidget {
  const HomePagePodcasts({super.key});

  @override
  State<HomePagePodcasts> createState() => _HomePagePodcastsState();
}

class _HomePagePodcastsState extends State<HomePagePodcasts> {
  var songposter = [
    {
      'imageUrl':
          "https://m.media-amazon.com/images/S/dmp-catalog-images-prod/images/8758eb1c-1457-4758-ac9e-b869db7e853d/8758eb1c-1457-4758-ac9e-b869db7e853d-675762403._SX472_SY472_BL0_QL100__UX56_FMwebp_QL85_.jpeg",
      "name": "The Stories of Mahabharata",
      "subname": 'Sudipta Bhawmik',
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/S/dmp-catalog-images-prod/images/af8ad57b-4bae-43ba-beff-6d36fe2b7598/af8ad57b-4bae-43ba-beff-6d36fe2b7598-1883939637._SX472_SY472_BL0_QL100__UX56_FMwebp_QL85_.jpeg",
      "name": "Mirchi Murga",
      "subname": 'Mirchi Podcast',
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/S/dmp-catalog-images-prod/images/29771436-bfa6-4906-9028-0f6f7eb6efee/29771436-bfa6-4906-9028-0f6f7eb6efee--863278904._SX472_SY472_BL0_QL100__UX56_FMwebp_QL85_.jpg",
      "name": "The Ranveer Show",
      "subname": 'BeerBiceps aka Ranveer Allahbadia',
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/61KpJti1SzL._UX358_FMwebp_QL85_.jpg",
      "name": "Brahmastra",
      "subname": ' Amitabh Bhattacharya',
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/S/dmp-catalog-images-prod/images/f70c510a-f6fd-4aba-9193-e2ae99831235/f70c510a-f6fd-4aba-9193-e2ae99831235--713650342._SX472_SY472_BL0_QL100__UX56_FMwebp_QL85_.jpeg",
      "name": "The Desi Crime Podcast",
      "subname": 'Lost Debate',
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
