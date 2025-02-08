import 'package:flutter/material.dart';
import 'package:guide_for_hajj/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Guide For Hajj',
      home: RotatingCircle(),
    );
  }
}
