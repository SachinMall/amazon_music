import 'package:flutter/material.dart';

class MusicPlayerScreen extends StatefulWidget {
  const MusicPlayerScreen({Key? key}) : super(key: key);

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[900],
            ),
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
                shape: BoxShape.circle,
                color: Colors.grey[900],
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.radio_button_checked,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/music.jpg',
                  fit: BoxFit.contain,
                  height: 320,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 70,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.grey[500],
                  borderRadius: BorderRadius.circular(22),
                ),
                child: const Center(
                    child: Text(
                  "X-Ray",
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                )),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Woh Pehli Dafa',
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline,
                        size: 22,
                      ))
                ],
              ),
              Text(
                'Prateek SS',
                style: TextStyle(fontSize: 16, color: Colors.grey[500]),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: LinearProgressIndicator(
                  value: 0.3,
                  minHeight: 2,
                  backgroundColor: Colors.grey[700],
                  valueColor: const AlwaysStoppedAnimation(Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 50,
                    child: IconButton(
                      icon: const Icon(
                        Icons.skip_previous,
                        size: 35,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    width: 45,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.skip_next,
                      size: 35,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share,
                      size: 19,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.cast,
                      size: 19,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.playlist_play,
                      size: 19,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      size: 19,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
