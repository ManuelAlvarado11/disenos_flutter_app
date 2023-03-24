import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_disenos/src/screens/basic_desing.dart';
import 'package:flutter_disenos/src/screens/home_screen.dart';
import 'package:flutter_disenos/src/screens/scroll_desing.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Style de barra de iconos superior del SO(Bateria, hora, notificaciones ....)
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'scroll_desing',
      routes: {
        'basic_desing': (_) => BasicDesingScreen(),
        'scroll_desing': (_) => const ScrollDesingScreen(),
        'home_screen': (_) => const HomeScreen(),
      },
    );
  }
}
