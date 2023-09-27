import 'package:amazon_music/const.dart';
import 'package:flutter/material.dart';

class LibraryPlaylists extends StatefulWidget {
  const LibraryPlaylists({super.key});

  @override
  State<LibraryPlaylists> createState() => _LibraryPlaylistsState();
}

class _LibraryPlaylistsState extends State<LibraryPlaylists> {
  var playlist = [
    {
      "imageUrl":
          "https://m.media-amazon.com/images/G/01/Music/Curate/052720_Mylikes_PL_FT_PL_Tile_2400x2400._SX354_SY354_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "My Likes",
    },
    {
      "imageUrl":
          "https://m.media-amazon.com/images/I/81RUq38tqqL._SX354_SY354_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "Hot Right Now",
    },
    {
      "imageUrl":
          "https://m.media-amazon.com/images/I/81R2w-bjT6L._SX354_SY354_BL0_QL100__UX358_FMwebp_QL85_.jpg",
      "name": "50 Most Played"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: ListView.builder(
        itemCount: playlist.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  playlist[index]["imageUrl"].toString(),
                  fit: BoxFit.contain,
                  height: 140,
                ),
                height10,
                Text(
                  playlist[index]["name"].toString(),
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
