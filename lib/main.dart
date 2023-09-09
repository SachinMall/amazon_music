import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'homepage.dart';
import 'const.dart';
import 'homepage2.dart';

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
          appBarTheme: AppBarTheme(color: Colors.black),
          scaffoldBackgroundColor: Colors.black,
          brightness: Brightness.dark),
      home: HomePageS(),
    );
  }
}
