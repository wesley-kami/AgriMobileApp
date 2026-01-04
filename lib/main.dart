import 'package:flutter/material.dart';
import 'interface_1.dart';
import 'screens/care_screen.dart';
import 'package:agrimobileapp/interface_3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

Widget _buildBottomNavigationBar() {
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
          // bouton home
          _buildNavButton(
            icon: Icons.home,
            isActive: false,
            onTap: () {},
          ),

          // bouton plante
          _buildNavButton(
            icon: Icons.eco,
            isActive: false,
            onTap: () {},
          ),

          // bouton care (actif) reste sur place
          _buildCareButton(),

          // bouton profil
          _buildNavButton(
            icon: Icons.person,
            isActive: false,
            onTap: () {},
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


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Interface3(),
      );
  }
}