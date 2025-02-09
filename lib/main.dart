import 'package:flutter/material.dart';
import 'package:guide_for_hajj/guide_hagg_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Guide For Hajj',
      home: HajjGuide(),
    );
  }
}
