import 'package:flutter/material.dart';
import 'package:myappflutter/pages/appels.dart';
import 'package:myappflutter/pages/communautes.dart';
import 'package:myappflutter/pages/actus.dart';
import 'package:myappflutter/pages/discussions.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xFF1BB720),
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
  final pages = [
    const DiscussionsPage(),
    const ActusPage(),
    const CommunautesPage(),
    const AppelsPage()
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.grey,
                width: 0.2,
              ),
            ),
          ),
          child: NavigationBar(
              selectedIndex: currentIndex,
              onDestinationSelected: (int currentIndex) {
                setState(() {
                  this.currentIndex = currentIndex;
                });
              },
              backgroundColor: Colors.white,
              destinations: const [
                NavigationDestination(
                    icon: Icon(Icons.message), label: "Discussions"),
                NavigationDestination(
                    icon: Icon(Icons.newspaper), label: "Actus"),
                NavigationDestination(
                    icon: Icon(Icons.group), label: "Communautés"),
                NavigationDestination(icon: Icon(Icons.phone), label: "Appels"),
              ])),
    );
  }
}
