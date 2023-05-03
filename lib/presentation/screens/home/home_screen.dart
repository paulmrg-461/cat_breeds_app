import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cats App'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.dark_mode_outlined))
        ],
      ),
      body: const Center(
        child: Text('Cats App Home Screen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.catching_pokemon),
      ),
    );
  }
}
