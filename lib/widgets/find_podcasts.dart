import 'package:amazon_music/widgets/modal.dart';
import 'package:flutter/material.dart';

class FindPodcasts extends StatefulWidget {
  const FindPodcasts({super.key});

  @override
  State<FindPodcasts> createState() => _FindPodcastsState();
}

class _FindPodcastsState extends State<FindPodcasts> {
  final List<LinearGradient> containerGradients = [
    const LinearGradient(
        colors: [Colors.redAccent, Colors.amber],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter),
    const LinearGradient(
        colors: [Colors.blue, Colors.brown],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight),
    const LinearGradient(
        colors: [Colors.cyan, Colors.deepOrange],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight),
    const LinearGradient(
        colors: [Colors.deepPurple, Colors.green],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight),
    const LinearGradient(
        colors: [Colors.grey, Colors.indigo],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight),
    const LinearGradient(
        colors: [Colors.limeAccent, Colors.pink],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight),
  ];

  final List name = [
    Data(text: "Top Podcasts"),
    Data(text: "Arts"),
    Data(text: "Business"),
    Data(text: "Religion"),
    Data(text: "Education"),
    Data(text: "Health & Fitness"),
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
              print('Tapped on ${name[index].text}');
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
