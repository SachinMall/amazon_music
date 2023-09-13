import 'package:flutter/material.dart';

import 'modal.dart';

class FindGridView extends StatefulWidget {
  const FindGridView({super.key});

  @override
  State<FindGridView> createState() => _FindGridViewState();
}

class _FindGridViewState extends State<FindGridView> {
  final List<LinearGradient> containerGradients = [
    const LinearGradient(
        colors: [Colors.red, Colors.yellow],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight),
    const LinearGradient(
        colors: [Colors.blue, Colors.black],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight),
    const LinearGradient(
        colors: [Colors.grey, Colors.green],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight),
    const LinearGradient(
        colors: [Colors.cyanAccent, Colors.purpleAccent],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight),
    const LinearGradient(
        colors: [Colors.orange, Colors.lightBlueAccent],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight),
    const LinearGradient(
        colors: [Colors.indigo, Colors.lime],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight),
  ];

  final List name = [
    Data(text: "Love"),
    Data(text: "Happy"),
    Data(text: "Party"),
    Data(text: "Work Out"),
    Data(text: "Travel"),
    Data(text: "Chill"),
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
