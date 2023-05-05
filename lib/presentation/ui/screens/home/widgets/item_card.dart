import 'package:flutter/material.dart';
import 'package:pragma_flutter_cats_app/domain/entities/cat_breed.dart';
import 'package:pragma_flutter_cats_app/presentation/ui/screens/home/widgets/characteristic_item.dart';

class ItemCard extends StatelessWidget {
  final CatBreed catBreed;
  const ItemCard({super.key, required this.catBreed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Column(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(26),
                    topRight: Radius.circular(26)),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(catBreed.image))),
          )),
          Container(
            // height: 110,
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(26),
                  bottomRight: Radius.circular(26)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 4,
                  blurRadius: 5,
                  offset: const Offset(3, 3),
                ),
              ],
            ),
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
                        icon: Icons.south_america,
                        text: 'Country: ${catBreed.origin}'),
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
    );
  }
}
