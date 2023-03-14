import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
  const BasicDesingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Image
          const FadeInImage(
            image: AssetImage('assets/landscape.jpg'),
            placeholder: AssetImage('assets/landscape.jpg'),
          ),

          // Title
          const Title(),

          // Buttons section
          const ButtonSection(),

          // Description
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
                'Fugiat deserunt dolor dolor aute aute aute minim qui consequat qui id. Exercitation excepteur id nostrud est. Exercitation in dolore ex id culpa. Ad exercitation anim amet nisi in veniam officia sint. Sit mollit cupidatat minim occaecat officia duis ea occaecat fugiat cupidatat ea magna. Ullamco nulla culpa proident proident nisi officia.'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close, color: Colors.white),
        onPressed: () => Navigator.pushNamed(context, 'home_screen'),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          // Descripcion
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Este es el titulo de la pantalla',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Este es el subtitulo de la pantalla',
                  style: TextStyle(color: Colors.black45)),
            ],
          ),

          // Expanded se expande todo lo que puede dentro de su padre
          Expanded(child: Container()),

          // Puntaje
          const Icon(Icons.star, color: Colors.red),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(text: 'Call', icon: Icons.phone),
          CustomButton(text: 'Route', icon: Icons.room_outlined),
          CustomButton(text: 'Share', icon: Icons.share)
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final IconData icon;

  const CustomButton({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue.shade400),
        const SizedBox(height: 10),
        Text(text, style: TextStyle(color: Colors.blue.shade400))
      ],
    );
  }
}
