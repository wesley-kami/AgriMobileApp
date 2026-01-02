import 'package:flutter/material.dart';
import 'pages/care_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CareScreen(), debugShowCheckedModeBanner: false);
  }
}
