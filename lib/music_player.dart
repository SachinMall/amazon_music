import 'package:flutter/material.dart';

class MusicPlayerScreen extends StatefulWidget {
  const MusicPlayerScreen({super.key});

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(gradient: LinearGradient(
              begin: Alignment.topLeft,
              // end: Alignment.bottomRight,
              colors: [Colors.green, Colors.grey])),
        ),
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[900]),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.keyboard_arrow_down,
                size: 20,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 38,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[900]),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.radio_button_checked,
                  size: 20,
                ),
              ),
            ),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.green, Colors.grey])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              child: Image.network(
                'https://m.media-amazon.com/images/I/61aIb2cWfrL._UXNaN_FMwebp_QL85_.jpg?isCloudQueue=true',
                fit: BoxFit.contain,
                height: 350,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Song Title',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Artist Name',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.skip_previous),
                  onPressed: () {
                    // Handle previous song
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.play_arrow),
                  onPressed: () {
                    // Handle play/pause
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.skip_next),
                  onPressed: () {
                    // Handle next song
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
