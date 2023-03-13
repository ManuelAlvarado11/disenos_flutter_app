import 'package:flutter/material.dart';
import 'package:flutter_disenos/src/screens/basic_desing.dart';
import 'package:flutter_disenos/src/screens/scroll_desing.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'scroll_desing',
      routes: {
        'basic_desing': (_) => const BasicDesingScreen(),
        'scroll_desing': (_) => const ScrollDesingScreen(),
      },
    );
  }
}
