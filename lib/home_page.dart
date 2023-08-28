import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(centerTitle: true, title: const Text('Home'), backgroundColor: Colors.transparent),
        body: const Center(
          child: Text('Home Page')
        )
      // it should be a title with a lorem ipsum text
    );
  }
}