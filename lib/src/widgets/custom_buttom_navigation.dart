import 'package:flutter/material.dart';

class CustomButtomNavigation extends StatelessWidget {
  const CustomButtomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.car_crash), label: 'Car'),
        BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: 'Graficos'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil')
      ],
    );
  }
}
