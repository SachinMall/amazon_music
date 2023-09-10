import 'package:flutter/material.dart';

class TrendingSongs extends StatefulWidget {
  const TrendingSongs({super.key});

  @override
  State<TrendingSongs> createState() => _TrendingSongsState();
}

class _TrendingSongsState extends State<TrendingSongs> {
  var trending = [
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/41Ca4Ui2xpL._SX472_SY472_BL0_QL100__UX56_FMwebp_QL85_.jpg",
      "name": "Jaane Jaa (Teaser)",
      "subname": 'Dj Chetas',
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/51T5laRvDpL._SX472_SY472_BL0_QL100__UX56_FMwebp_QL85_.jpg",
      "name": "Kotha Raja",
      "subname": 'Jakes Bejoy',
    },
    {
      'imageUrl':
          "https://m.media-amazon.com/images/I/414advfEpOL._SX472_SY472_BL0_QL100__UX56_FMwebp_QL85_.jpg",
      "name": "Dhundhala",
      "subname": 'Dropped Out',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: trending.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Image.network(
                  trending[index]["imageUrl"].toString(),
                  fit: BoxFit.contain,
                  height: 50,
                ),
                title: Text(trending[index]['name'].toString()),
                subtitle: Text(trending[index]['subname'].toString()),
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
    );
  }
}
