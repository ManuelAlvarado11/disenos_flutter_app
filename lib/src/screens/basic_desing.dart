import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
  const BasicDesingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: FadeInImage(
          image: AssetImage('assets/landscape.jpg'),
          placeholder: AssetImage('assets/landscape.jpg')),
    ));
  }
}
