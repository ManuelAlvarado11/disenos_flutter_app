import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.2, 0.8],
      colors: [
        Color(0xff2e305f),
        Color(0xff202333),
      ],
    ),
  );
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Purple Gradient
        Container(decoration: boxDecoration),

        // Pink box
        const _PinkBox()
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Crea un widget que controla dónde se coloca un hijo de una [Pila].
    return Positioned(
      top: -100,
      left: -30,
      // Crea un widget que transforma a su hijo mediante una rotación
      child: Transform.rotate(
        angle: -pi / 5,
        child: Container(
          width: 360,
          height: 360,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(230, 63, 171, 1),
                Color.fromRGBO(241, 141, 172, 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
