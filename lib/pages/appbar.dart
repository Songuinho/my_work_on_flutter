import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorSchemeSeed: const Color.fromARGB(255, 4, 52, 92),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          elevation: 14.0,
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text("Menu"),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Paramettres"),
                onTap: () {},
              ),
              const ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Configurations"),
              ),
              const ListTile(
                leading: Icon(Icons.help),
                title: Text("Assistance"),
                selectedColor: Colors.blue,
                trailing: Icon(Icons.chevron_right),
              ),
              const ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Quitter"),
              ),
            ],
          ),
        ),
        body: const Text("Body"));
  }
}
