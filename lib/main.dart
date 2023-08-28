import 'package:flutter/material.dart';
import 'package:lab_a_tono/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
    home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liderazgo A tono'),
      ),
      body: const HomePage(),
      bottomNavigationBar: NavigationBar(destinations: [
        const NavigationDestination(icon: Icon(Icons.home), label: 'Casa'),
        const NavigationDestination(icon: Icon(Icons.games), label: 'Juega')
      ],
        onDestinationSelected: (int index){
        setState(() {
          currentPage = index;
        });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}

