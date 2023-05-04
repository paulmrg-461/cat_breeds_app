import 'package:flutter/material.dart';
import 'package:pragma_flutter_cats_app/presentation/ui/screens/home/widgets/cards_listview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catbreeds'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.dark_mode_outlined))
        ],
      ),
      body: const CardsListview(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.catching_pokemon),
      ),
    );
  }
}
