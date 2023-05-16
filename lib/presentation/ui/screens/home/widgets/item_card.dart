import 'package:cat_breeds_app/presentation/ui/shared/network_img.dart';
import 'package:flutter/material.dart';
import 'package:cat_breeds_app/domain/entities/cat_breed.dart';
import 'package:cat_breeds_app/presentation/ui/screens/detail/detail_screen.dart';
import 'package:cat_breeds_app/presentation/ui/screens/home/widgets/characteristic_item.dart';

class ItemCard extends StatelessWidget {
  final CatBreed catBreed;
  const ItemCard({super.key, required this.catBreed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 390,
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: Card(
        elevation: 6,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          child: Column(
            children: [
              Expanded(child: NetworkImg(url: catBreed.image)),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      catBreed.name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      catBreed.description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w200),
                    ),
                    const Divider(
                      thickness: 0.25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CharacteristicItem(
                            icon: Icons.south_america, text: catBreed.origin),
                        CharacteristicItem(
                            icon: Icons.pets_outlined,
                            text: 'Intelligence: ${catBreed.intelligence}'),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(catBreed: catBreed),
              )),
        ),
      ),
    );
  }
}
