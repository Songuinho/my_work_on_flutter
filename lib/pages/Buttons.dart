import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorSchemeSeed: const Color.fromARGB(255, 10, 75, 216),
          scaffoldBackgroundColor: Colors.white),
      home: const HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Color bg = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: ListView(children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text("Bouton avec elevation"),
            onPressed: () {
              setState(() {
                bg = Colors.red;
              });
            }),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          child: const Text("Bouton OutlinedButton"),
          onPressed: () {
            setState(() {
              bg = Colors.green;
            });
          },
        ),
        TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.yellow),
          child: const Text("Bouton simpple texte"),
          onPressed: () {
            setState(() {
              bg = Colors.yellow;
            });
          },
        ),
        IconButton(
            style: IconButton.styleFrom(backgroundColor: Colors.orange),
            onPressed: () {
              setState(() {
                bg = Colors.orange;
              });
            },
            icon: const Icon(Icons.home)),
      ]),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            bg = Colors.indigo;
          });
        },
      ),
    );
  }
}
