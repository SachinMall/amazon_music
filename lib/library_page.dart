import 'package:amazon_music/const.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
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
                height: 30,
                decoration: BoxDecoration(
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
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            kwidth5,
            InkWell(
              onTap: () {},
              child: Container(
                height: 30,
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
      body: const SingleChildScrollView(),
    );
  }
}
