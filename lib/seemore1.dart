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


// GestureDetector(
//             onTap: () {
//               showModalBottomSheet(
//                 backgroundColor: Colors.grey[1100],
//                 shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(20),
//                       topRight: Radius.circular(20)),
//                 ),
//                 context: context,
//                 builder: (BuildContext context) {
//                   return GestureDetector(
//                     onTap: () {
//                       print("object");
//                     },
//                     child: const Column(
//                       children: <Widget>[
//                         ListTile(
//                           leading: Icon(Icons.directions_car_filled_rounded),
//                           title: Text('Car Mode'),
//                         ),
//                         SizedBox(
//                           width: 380,
//                           child: Divider(
//                               thickness: 0.1, color: Colors.white, height: 0.3),
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.toggle_off),
//                           title: Text('Offline Mode'),
//                         ),
//                         SizedBox(
//                           width: 380,
//                           child: Divider(
//                               thickness: 0.1, color: Colors.white, height: 0.3),
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.cast),
//                           title: Text('Connected to a Device'),
//                         ),
//                         SizedBox(
//                           width: 380,
//                           child: Divider(
//                               thickness: 0.1, color: Colors.white, height: 0.3),
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.person),
//                           title: Text('My Profile'),
//                         ),
//                         SizedBox(
//                           width: 380,
//                           child: Divider(
//                               thickness: 0.1, color: Colors.white, height: 0.3),
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.settings),
//                           title: Text('Settings'),
//                         ),
//                         SizedBox(
//                           width: 380,
//                           child: Divider(
//                               thickness: 0.1, color: Colors.white, height: 0.3),
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.help),
//                           title: Text('Help & Feedback'),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text(
//                           "Dismiss",
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               );
//             },
//             child: const Padding(
//               padding: EdgeInsets.only(right: 18),
//               child: Icon(
//                 Icons.settings,
//                 size: 27,
//                 color: kwhite,
//               ),
//             ),
//           ),
