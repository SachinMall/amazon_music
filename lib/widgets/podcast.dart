import 'package:amazon_music/const.dart';
import 'package:flutter/material.dart';

class Podcasts extends StatefulWidget {
  const Podcasts({super.key});

  @override
  State<Podcasts> createState() => _PodcastsState();
}

class _PodcastsState extends State<Podcasts> {
  var podcast = [
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

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 200,
      child: ListView.builder(
        itemCount: podcast.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 15),
            child: GestureDetector(
              child: Column(
                children: [
                  Image.network(
                    podcast[index]['imageUrl'].toString(),
                    fit: BoxFit.contain,
                    height: 140,
                  ),
                  height2,
                  Text(podcast[index]['name'].toString()),
                  height2,
                  Text(
                    podcast[index]['subname'].toString(),
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
