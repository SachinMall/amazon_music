import 'package:amazon_music/homepage2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationIcon extends StatefulWidget {
  // final void Function() onTap;
  const NotificationIcon({
    super.key,
  });

  @override
  State<NotificationIcon> createState() => _NotificationIconState();
}

class _NotificationIconState extends State<NotificationIcon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Activity",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        leading: IconButton(
          onPressed: () {
            Get.to(() => const HomePageS());
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Container(
          child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "You don't have any activity yet",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 19,
          ),
          Center(
            child: Text(
              "Updates from the artists you follow will appear\nhere.",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      )),
    );
  }
}
