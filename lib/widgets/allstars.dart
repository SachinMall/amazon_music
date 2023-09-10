import 'package:flutter/material.dart';

import '../const.dart';

class AllStarsPlayList extends StatefulWidget {
  const AllStarsPlayList({super.key});

  @override
  State<AllStarsPlayList> createState() => _AllStarsPlayListState();
}

class _AllStarsPlayListState extends State<AllStarsPlayList> {
  var images = [
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/41ulipKa+BL._SX354_SY354_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "Best of Arijit Singh",
      "subname": "Jasleen ROyal"
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/41GWoNqyi0L._SX354_SY354_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "Best of Sharukh Khan",
      "subname": "Jasleen ROyal..."
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/410RcRgOBFL._SX354_SY354_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "Best of Shreya Ghosal",
      "subname": "Anirudh Ravichander.."
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/51zpAR3V1TL._SX354_SY354_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "Best of Tanishq Ba",
      "subname": "Arijit Singh..."
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/51Zsi1O3s2L._SX354_SY354_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "Best of Jubin Nautiyal",
      "subname": "Sachin-Jigar"
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/41uyoxF9MnS._SX354_SY354_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "Best of Divine",
      "subname": " Neha Kakka"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 200,
      child: ListView.builder(
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15),
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
          );
        },
      ),
    );
  }
}
