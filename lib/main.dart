import 'package:flutter/material.dart';
// import 'screens/home_screen.dart';
// import 'screens/plants_screen.dart';
import 'screens/care_screen.dart';
// import 'screens/profile_screen.dart';

void main() {
  runApp(PlantApp());
}

class PlantApp extends StatelessWidget {
  const PlantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant App',
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: 'Poppins'),
      home: MainNavigationScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  _MainNavigationScreenState createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _currentIndex =
      0; //commence par Home (0=Home, 1=Plants, 2=Care, 3=Profile)

  // Fonction pour changer d'écran
  void _changeScreen(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Retourne l'écran approprié avec la fonction de navigation
    switch (_currentIndex) {
      // case 0: // Home
      //   return HomeScreen(
      //     onNavigate: _changeScreen,
      //     isActivePage: true, // Home est la page active
      //   );
      // case 1: // Plants
      //   return PlantsScreen(
      //     onNavigate: _changeScreen,
      //     isActivePage: true, // Plants est la page active
      //   );
      case 2: // Care
        return CareScreen(
          onNavigate: _changeScreen,
          isActivePage: true, //Care est la page active
        );
      // case 3: // Profile
      //   return ProfileScreen(
      //     onNavigate: _changeScreen,
      //     isActivePage: true, // Profile est la page active
      //   );
      default:
        return CareScreen(onNavigate: _changeScreen, isActivePage: true);
    }
  }
}
