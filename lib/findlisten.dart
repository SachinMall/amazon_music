import 'package:amazon_music/widgets/modal.dart';
import 'package:flutter/material.dart';

class FindListen extends StatefulWidget {
  const FindListen({super.key});

  @override
  State<FindListen> createState() => _FindListenState();
}

class _FindListenState extends State<FindListen> {
  final List<LinearGradient> containerGradients = [
    const LinearGradient(colors: [
      Color.fromARGB(255, 71, 16, 210),
      Color.fromARGB(255, 34, 174, 235)
    ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
    const LinearGradient(colors: [
      Color.fromARGB(255, 20, 227, 134),
      Color.fromARGB(255, 185, 16, 16)
    ], begin: Alignment.bottomLeft, end: Alignment.topRight),
    const LinearGradient(colors: [
      Color.fromARGB(255, 190, 10, 118),
      Color.fromARGB(255, 200, 156, 13)
    ], begin: Alignment.bottomLeft, end: Alignment.topRight),
    const LinearGradient(colors: [
      Color.fromARGB(255, 147, 208, 15),
      Color.fromARGB(255, 32, 23, 196)
    ], begin: Alignment.bottomLeft, end: Alignment.topRight),
    const LinearGradient(colors: [
      Color.fromARGB(255, 218, 209, 38),
      Color.fromARGB(255, 13, 47, 160)
    ], begin: Alignment.bottomLeft, end: Alignment.topRight),
    const LinearGradient(colors: [
      Color.fromARGB(255, 255, 0, 0),
      Color.fromARGB(255, 57, 158, 220)
    ], begin: Alignment.bottomLeft, end: Alignment.topRight),
  ];

  final List name = [
    Data(text: "Playlists"),
    Data(text: "Stations"),
    Data(text: "Indian Classical"),
    Data(text: "Indian Devotional"),
    Data(text: "Women in Music"),
    Data(text: "Amazon Music"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: GridView.builder(
        padding: const EdgeInsets.all(8),
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 70),
        itemBuilder: (BuildContext context, int index) {
          // ignore: unused_local_variable
          final gradient =
              containerGradients[index % containerGradients.length];

          return InkWell(
            onTap: () {
              // print('Tapped on ${name[index].text}');
            },
            child: Container(
              margin: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  gradient: gradient, borderRadius: BorderRadius.circular(16)),
              child: Center(
                child: Text(
                  name[index].text,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
        itemCount: name.length,
      ),
    );
  }
}
