import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  final dio = Dio();
  var listCountries = [];

  getCounties() async {
    try {
      final response = await dio.get('https://restcountries.com/v3.1/all');

      setState(() {
        listCountries = response.data;
      });
    } catch (e) {
      print('Error fetching countries: $e');
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
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: listCountries.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(
                listCountries[index]['flag'],
                style: const TextStyle(fontSize: 25),
              ),
              title: Text(listCountries[index]['name']['common']),
              subtitle: Text(listCountries[index]['capital'][0]),
            );
          }),

      // ListView(
      //   padding: const EdgeInsets.all(10),
      //   children: const [
      //     TextField(
      //       decoration: InputDecoration(
      //         hintFadeDuration: Duration(milliseconds: 100),
      //         hintText: 'Phone',
      //         prefixIcon: Icon(Icons.phone),
      //         hintMaxLines: 9,
      //       ),
      //       autocorrect: true,
      //       keyboardType: TextInputType.phone,
      //       keyboardAppearance: Brightness.dark,
      //     ),
      //   ],
      // ),
    );
  }
}
