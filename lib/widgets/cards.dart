import 'package:flutter/material.dart';

class SongCards extends StatefulWidget {
  const SongCards({super.key});

  @override
  State<SongCards> createState() => _SongCardsState();
}

class _SongCardsState extends State<SongCards> {
  var cards = [
    {"imageUrl": "assets/images/1.jpg"},
    {"imageUrl": "assets/images/2.jpg"},
    {"imageUrl": "assets/images/3.jpeg"},
    {"imageUrl": "assets/images/4.jpg"}
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Card(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(cards[index]["imageUrl"].toString()),
              ),
            ),
          );
        },
      ),
    );
  }
}
