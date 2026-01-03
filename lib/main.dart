import 'package:agrimobileapp/interface_3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AgriMobileApp',
      theme: ThemeData(primarySwatch: Colors.green, useMaterial3: true),
      home: const Interface3(),
    );
  }
}
