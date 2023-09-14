import 'package:flutter/material.dart';

import '../const.dart';

class LibraryMadeForYou extends StatefulWidget {
  const LibraryMadeForYou({super.key});

  @override
  State<LibraryMadeForYou> createState() => _LibraryMadeForYouState();
}

class _LibraryMadeForYouState extends State<LibraryMadeForYou> {
  var madeforyou = [
    {
      "imageUrl":
          "https://m.media-amazon.com/images/G/01/ctt2309d82309/2022_en_US-UK-CA-AUNZ_MySoundtrack_PG_GH_2400x2400._UX358_FMwebp_QL85_.jpg",
      "name": "STATION",
      "subname": "My Soundtrack",
    },
    {
      "imageUrl":
          "https://m.media-amazon.com/images/G/01/digital/music/merch/2019/Programming/Mystique/091319_US_MyDiscoveryMix_PG_PA_CL_2400x2400._CB450178883_SX354_SY354_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "PLAYLISTS",
      "subname": "My Discover Mix",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: ListView.builder(
        itemCount: madeforyou.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  madeforyou[index]["imageUrl"].toString(),
                  fit: BoxFit.contain,
                  height: 140,
                ),
                height10,
                Text(
                  madeforyou[index]["name"].toString(),
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
