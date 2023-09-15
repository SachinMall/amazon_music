import 'package:amazon_music/root_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.black),
          scaffoldBackgroundColor: Colors.black,
          brightness: Brightness.dark),
      home: const RootPage(),
    );
  }
}
