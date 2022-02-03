import 'package:flutter/material.dart';
import 'package:twitter_app_ui/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Twitter UI",
      home: TwitterUI(),
    );
  }
}
