import 'package:flutter/material.dart';

class AppelsPage extends StatelessWidget {
  const AppelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('appels'),
      ),
      body: const Center(
        child: Text('appels'),
      ),
    );
  }
}
