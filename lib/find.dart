import 'package:amazon_music/const.dart';
import 'package:flutter/material.dart';

class Find extends StatefulWidget {
  const Find({super.key});

  @override
  State<Find> createState() => _FindState();
}

class _FindState extends State<Find> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          padding: const EdgeInsets.only(left: 18),
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
            color: kwhite,
            size: 27,
          ),
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 18),
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: kwhite,
              size: 27,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 28, bottom: 10),
              // color: Colors.amber,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Search music and podcasts",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none),
                  contentPadding: const EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),
            height10,
            SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 50,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.grey[800]),
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.podcasts_rounded,
                          color: Colors.white,
                          size: 24,
                        ),
                        label: const Text(
                          "Podcasts",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  // height20,
                  TitileButton(
                    buttonText: "SEE MORE",
                    onTap: () {},
                    title: "Moods & Activities",
                  ),
                  SizedBox(
                    height: 200,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          color: Colors.blue,
                          height: 20,
                          width: 50,
                          margin: const EdgeInsets.all(8),
                          child: Center(
                            child: Text(
                              'Item $index',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      },
                      itemCount: 8,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TitileButton extends StatelessWidget {
  final String title, buttonText;
  final void Function() onTap;

  const TitileButton(
      {super.key,
      required this.title,
      required this.buttonText,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: onTap,
            child: Container(
              height: 30,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[800],
              ),
              child: Center(
                child: Text(
                  buttonText,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
