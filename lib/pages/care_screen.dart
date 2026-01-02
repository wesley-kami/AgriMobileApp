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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // container pour l'image avec bordures arrondies
          Container(
            height: 120,
            margin: const EdgeInsets.all(12), // espace autour de l'image
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // contenu textuel avec bouton à droite
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // partie texte à gauche
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        time,
                        style: TextStyle(color: Colors.grey[600], fontSize: 11),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        subtitle,
                        style: TextStyle(color: Colors.grey[600], fontSize: 12),
                      ),
                    ],
                  ),
                ),
                // espace entre texte et bouton
                const SizedBox(width: 12),
                // bouton rond avec flèche
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(150, 234, 246, 234), // vert
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green.withOpacity(0.3),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons
                        .arrow_forward, // fleche oblique orientee vers la droite
                    color: Color.fromARGB(255, 181, 180, 180),
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
