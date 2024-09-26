import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  final dio = Dio();

  getCounties() async {
    try {
      final response = await dio.get('https://restcountries.com/v3.1/all',
          options: Options(
              sendTimeout: const Duration(seconds: 5),
              receiveTimeout: const Duration(seconds: 5)));
      print(response);
    } catch (e) {
      print('Error fetching countries: $e');
      // Vous pouvez également afficher une boîte de dialogue ou un snackbar ici
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 14.0,
        title: const Text('Home'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              getCounties();
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          TextField(
            decoration: InputDecoration(
              hintFadeDuration: Duration(milliseconds: 100),
              hintText: 'Phone',
              prefixIcon: Icon(Icons.phone),
              hintMaxLines: 9,
            ),
            autocorrect: true,
            keyboardType: TextInputType.phone,
            keyboardAppearance: Brightness.dark,
          ),
        ],
      ),
    );
  }
}
