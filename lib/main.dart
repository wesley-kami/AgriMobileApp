import 'package:flutter/material.dart';
import './productslist.dart';
import './appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 215, 236, 222), // Clean background for the body
        body:Stack(
          clipBehavior: Clip.none,
          children: [
          const SizedBox(height: 380, width: double.infinity),
          const Appbar(),
          Positioned(
            top: 160, // Adjust this number to create the "Overlap"
            left: 0,
            right:0,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20), // Move the 20 padding here
              child: Productslist(),
            ),)
          ],
        )
      )
    );
  }
}