import 'package:flutter/material.dart';
import 'package:flutter_disenos/src/widgets/background.dart';
import 'package:flutter_disenos/src/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          // Background
          Background(),

          // Home Body
          _HomeBody()
        ],
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          // Page Title
          PageTitle()
        ],
      ),
    );
  }
}
