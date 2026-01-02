import 'package:flutter/material.dart';

class CareScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 248, 242),
      //barre de recherche
      appBar: AppBar(),
      //jooohnnn
    );
  }

  //construction d'une carte maladiie
  Widget _buildDiseaseCard({
    required String time,
    required String title,
    required String subtitle,
    required String imagePath,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
    );
  }
}
