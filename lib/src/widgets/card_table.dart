import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              text: 'General',
              icon: Icons.pie_chart_outline,
              color: Colors.blue,
            ),
            _SingleCard(
              text: 'Transport',
              icon: Icons.bus_alert_outlined,
              color: Colors.purple,
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              text: 'Perfil',
              icon: Icons.person,
              color: Colors.pink,
            ),
            _SingleCard(
              text: 'Mobile',
              icon: Icons.mobile_friendly,
              color: Colors.red,
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              text: 'Food',
              icon: Icons.soap,
              color: Colors.green,
            ),
            _SingleCard(
              text: 'Library',
              icon: Icons.library_add,
              color: Colors.orange,
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              text: 'Phishing',
              icon: Icons.phishing,
              color: Colors.yellow,
            ),
            _SingleCard(
              text: 'Error',
              icon: Icons.error,
              color: Colors.brown,
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;

  const _SingleCard({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      // Limita el efecto del Blur (Difimunado)
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'basic_desing'),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          // Crea un filtro de fondo (Blur)
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            // Card Option
            child: _ContentCard(color: color, icon: icon, text: text),
          ),
        ),
      ),
    );
  }
}

class _ContentCard extends StatelessWidget {
  const _ContentCard({
    Key? key,
    required this.color,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon
          CircleAvatar(
            radius: 30,
            backgroundColor: color,
            child: Icon(icon, size: 30),
          ),
          const SizedBox(height: 10),

          // Description
          Text(
            text,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}
