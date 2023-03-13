import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SafeArea crea un widget que evita las interfaces del sistema operativo
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Classify transaction',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Classify this transaction into a particular category, it is important',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
