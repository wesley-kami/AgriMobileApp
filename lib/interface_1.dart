import 'package:agrimobileapp/interface_3.dart';
import 'package:flutter/material.dart';
import 'appbar.dart';
import 'productslist.dart';

class Interface_1 extends StatelessWidget {
  const Interface_1({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor: const Color.fromARGB(255, 215, 236, 222),
              bottomNavigationBar: _buildBottomNavigationBar(context),
              body:Stack(
                clipBehavior: Clip.none,
                children: [
                const SizedBox(height: 380, width: double.infinity),
                const Appbar(),
                Positioned(
                  top: 160,
                  left: 0,
                  right:0,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Productslist(),
                  ),)
                ],
              )
            );
  }
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
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> Interface_1())
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
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> Interface3())
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
