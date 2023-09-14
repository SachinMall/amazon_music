import 'package:amazon_music/widgets/library_MadeforYou.dart';
import 'package:amazon_music/widgets/library_playlists.dart';
import 'package:amazon_music/widgets/trendingplaylist.dart';
import 'package:flutter/material.dart';

import 'const.dart';

class LibraryPage extends StatelessWidget {
  Widget history({
    required String text,
    required VoidCallback onTap,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: GestureDetector(
            onTap: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text),
                const Icon(Icons.arrow_forward_ios, size: 12),
              ],
            ),
          ),
        ),
        SizedBox(
            width: 370,
            child: Divider(
              color: Colors.white.withOpacity(0.3),
              height: 30,
            )),
      ],
    );
  }

  Widget buttonText(
      {required String text,
      required String textbutton,
      required VoidCallback onTap}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 30,
          width: 120,
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(16),
          ),
          child: TextButton(
            onPressed: onTap,
            child: Text(
              textbutton,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                width: 100,
                height: 25,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 60, 209, 243),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.8),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "MUSIC",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            kwidth5,
            InkWell(
              onTap: () {},
              child: Container(
                height: 25,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.withOpacity(0.8))),
                child: const Center(
                  child: Text(
                    "PODCASTS",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
              ),
            )
          ],
        ),
        leading: IconButton(
          padding: const EdgeInsets.only(left: 18),
          iconSize: 27,
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
          ),
        ),
        actions: [
          IconButton(
              iconSize: 27,
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
              ))
        ],
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: GestureDetector(
                  child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey),
                child: IconButton(
                    onPressed: () {
                      print("My Account");
                    },
                    icon: const Icon(Icons.person_2_rounded)),
              )),
              title: const Text(
                "PRIME",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 60, 209, 243),
                ),
              ),
              subtitle: const Text(
                "My Library",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  PlaylistsButton(
                    onTap: () {},
                    buttontext: "Playlists",
                  ),
                  kwidth15,
                  PlaylistsButton(
                    onTap: () {},
                    buttontext: "Songs",
                  ),
                  kwidth15,
                  PlaylistsButton(
                    onTap: () {},
                    buttontext: "Albums",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: buttonText(
                  onTap: () {},
                  text: "Playlists",
                  textbutton: "+ NEW PLAYLISTS"),
            ),
            const LibraryPlaylists(),
            height10,
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Made for You",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
            const LibraryMadeForYou(),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Recently Played",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
            // height20,
            const Padding(
              padding: EdgeInsets.only(left: 16, top: 10),
              child: TrendingPlaylist(),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Recents",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            history(
              text: "Song History",
              onTap: () {},
            ),
            history(
              text: "Recently Added",
              onTap: () {},
            ),
            history(
              text: "Recently Downloaded",
              onTap: () {},
            ),
            history(
              text: "Download queue",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class PlaylistsButton extends StatelessWidget {
  final String buttontext;
  final void Function() onTap;
  const PlaylistsButton(
      {super.key, required this.buttontext, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33,
      width: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.grey[800]),
      child: Center(
        child: TextButton(
          onPressed: onTap,
          child: Text(
            buttontext,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
