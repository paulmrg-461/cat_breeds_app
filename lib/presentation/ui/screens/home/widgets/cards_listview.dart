import 'package:flutter/material.dart';
import 'package:pragma_flutter_cats_app/presentation/ui/screens/home/widgets/item_card.dart';

class CardsListview extends StatelessWidget {
  const CardsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const ItemCard(),
    );
  }
}
