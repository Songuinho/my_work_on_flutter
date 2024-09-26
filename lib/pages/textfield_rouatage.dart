import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  String showEmail = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 14.0,
        title: const Text('Home'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/results');
            },
            child:
                const Text("Aller à la page de résultats de l'année 2024/2025"),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  helperText: '@ est obligatoire',
                  helperStyle: TextStyle(
                    fontSize: 12.3,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 233, 37, 37),
                  ),
                  enabledBorder: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    showEmail = value;
                  });
                },
              ),
            ),
          ),
          const SizedBox(width: 16.0),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  // hintText: 'phone',
                  labelText: 'phone',
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 16.0,
            child: Text(showEmail ?? ''),
          ),
        ],
      ),
    );
  }
}
