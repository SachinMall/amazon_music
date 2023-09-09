import 'package:flutter/material.dart';

import '../const.dart';

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

  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: GestureDetector(
                onTap: () {},
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
            ),
          );
        },
      ),
    );
  }
}
