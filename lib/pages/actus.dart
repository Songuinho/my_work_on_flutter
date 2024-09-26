import 'package:flutter/material.dart';

class ActusPage extends StatelessWidget {
  const ActusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Actus',
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Actus'),
      ),
    );
  }
}
