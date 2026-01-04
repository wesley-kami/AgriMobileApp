import 'package:flutter/material.dart';
import 'appbar.dart';
import 'productslist.dart';

class Interface_1 extends StatelessWidget {
  const Interface_1({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            );
  }
}
