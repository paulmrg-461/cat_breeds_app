import 'package:flutter/material.dart';
import 'package:cat_breeds_app/domain/entities/cat_breed.dart';
import 'package:cat_breeds_app/presentation/ui/screens/home/widgets/item_card.dart';

class CardsListview extends StatelessWidget {
  final List<CatBreed> catBreeds;
  const CardsListview({super.key, required this.catBreeds});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: catBreeds.length,
      itemBuilder: (context, index) {
        final CatBreed catBreed = catBreeds[index];
        return ItemCard(catBreed: catBreed);
      },
    );
  }
}
