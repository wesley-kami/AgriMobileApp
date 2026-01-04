import 'package:agrimobileapp/interface_1.dart';
import 'package:agrimobileapp/interface_3.dart';
import 'package:flutter/material.dart';

class CareScreen extends StatelessWidget {

  const CareScreen({
    super.key,
    this.isActivePage = false, //ajout de ce paramètre
  });

  final bool isActivePage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 248, 242),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            // champ de recherche
            Expanded(
              flex: 4,
              child: Container(
                height: 53,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.grey[300] ?? Colors.grey,
                    width: 1,
                  ),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Your Location nig...',
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 14,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            // bouton filtre
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.grey[300] ?? Colors.grey,
                  width: 1,
                ),
              ),
              child: IconButton(
                icon: const Icon(Icons.tune, color: Colors.black),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      // ajout de la barre de navigation fixe en bas
      bottomNavigationBar: _buildBottomNavigationBar(context),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          // section météo du jour
                          Container(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Today Weather',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    height: 410,
                                    decoration: BoxDecoration(
                                      color: Colors.blue[50],
                                      borderRadius: BorderRadius.circular(31),
                                      // ajout de l'image d'arriere plan
                                      image: const DecorationImage(
                                        image: AssetImage('assets/img/img.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        // overlay pour améliorer la lisibilité du texte
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              31,
                                            ),
                                            gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                Colors.black.withOpacity(0.3),
                                                Colors.black.withOpacity(0.1),
                                                Colors.transparent,
                                              ],
                                            ),
                                          ),
                                        ),
                                        // informations météo (jour et temperature)
                                        Positioned(
                                          left: 16,
                                          top: 16,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Monday',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                    255,
                                                    0,
                                                    0,
                                                    0,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 10),
                                              const Text(
                                                '24°C',
                                                style: TextStyle(
                                                  fontSize: 40,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                    255,
                                                    0,
                                                    0,
                                                    0,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 5),
                                            ],
                                          ),
                                        ),
                                        // heure actuelle
                                        Positioned(
                                          right: 16,
                                          top: 16,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              const Text(
                                                '8:25 am',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w900,
                                                  color: Color.fromARGB(
                                                    255,
                                                    0,
                                                    0,
                                                    0,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 5),
                                            ],
                                          ),
                                        ),
                                        // bouton de localisation automatique
                                        Positioned(
                                          bottom: 16,
                                          left: 0,
                                          right: 0,
                                          child: Center(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.1),
                                                    blurRadius: 5,
                                                    offset: const Offset(0, 2),
                                                  ),
                                                ],
                                              ),
                                              child: Material(
                                                color: Colors.transparent,
                                                child: InkWell(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                          horizontal: 24,
                                                          vertical: 12,
                                                        ),
                                                    child: const Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        SizedBox(width: 8),
                                                        Text(
                                                          'Determine Location Automatically',
                                                          style: TextStyle(
                                                            color: Colors.grey,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(context, 
                                                    MaterialPageRoute(builder: (context) => Interface_1())
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 25),
                                // entete des maladies
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Diseases',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const Text(
                                        'See all',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                            255,
                                            105,
                                            106,
                                            106,
                                          ),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                          ),
                          // première ligne de cartes de maladies
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Expanded(
                                  child: _buildDiseaseCard(
                                    time: 'Today 2.00 PM',
                                    title: 'Angular',
                                    subtitle: 'Leaf spot of...',

                                    imagePath: 'assets/img/angular.jpg',
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: _buildDiseaseCard(
                                    time: 'Today 4.00 PM',
                                    title: 'Ascochyta',
                                    subtitle: 'Blight',

                                    imagePath: 'assets/img/asco.jpeg',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 16),
                          // deuxieme ligne de cartes de maladies
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Expanded(
                                  child: _buildDiseaseCard(
                                    time: 'Today 6.00 PM',
                                    title: 'Powdery',
                                    subtitle: 'Mildew',

                                    imagePath: 'assets/img/powdery.jpeg',
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: _buildDiseaseCard(
                                    time: 'Today 8.00 PM',
                                    title: 'Root Rot',
                                    subtitle: 'Fungal disease',

                                    imagePath: 'assets/img/root_rot.jpeg',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // espace pour la barre de navigation
                          const SizedBox(height: 80),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  // construction d'une carte de maladie
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
                        .arrow_outward_sharp, // fleche oblique orientee vers la droite
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

  Widget _buildBottomNavigationBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -1),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // bouton plante
          _buildNavButton(
            icon: Icons.eco,
            isActive: false,
            onTap: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => Interface_1())
              );
            },
          ),

          // bouton care (actif) reste sur place
          _buildCareButton(),

          // bouton profil
          _buildNavButton(
            icon: Icons.person,
            isActive: false,
            onTap: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => Interface3())
              );
            },
          ),
        ],
      ),
    );
  }

  // construction d'un bouton de navigation avec icne
  Widget _buildNavButton({
    required IconData icon,
    required bool isActive,
    required VoidCallback onTap,
  }) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : const Color.fromARGB(255, 39, 120, 42),
        shape: BoxShape.circle,
        border: isActive
            ? Border.all(color: const Color(0xFF4CAF50), width: 2)
            : null,
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: isActive ? const Color(0xFF4CAF50) : Colors.white,
          size: 24,
        ),
        onPressed: onTap,
      ),
    );
  }

  // construction du bouton care
  Widget _buildCareButton() {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: const Color(0xFF4CAF50), width: 2),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.food_bank_outlined, color: Colors.green, size: 20),
          SizedBox(width: 8),
          Text(
            'Care',
            style: TextStyle(
              color: Color(0xFF4CAF50),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
