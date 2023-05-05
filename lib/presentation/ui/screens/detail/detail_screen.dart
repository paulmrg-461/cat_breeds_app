import 'package:flutter/material.dart';
import 'package:pragma_flutter_cats_app/domain/entities/cat_breed.dart';
import 'package:pragma_flutter_cats_app/presentation/ui/screens/detail/widgets/characteristic_detail.dart';
import 'package:pragma_flutter_cats_app/presentation/ui/screens/detail/widgets/temperament_row.dart';

class DetailScreen extends StatelessWidget {
  final CatBreed catBreed;
  const DetailScreen({super.key, required this.catBreed});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(catBreed.name),
      ),
      body: Column(
        children: [
          Container(
            height: size.height * 0.375,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(catBreed.image))),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CharacteristicDetail(
                        icon: Icons.south_america,
                        text: 'Country: ${catBreed.origin}'),
                    CharacteristicDetail(
                        icon: Icons.access_time,
                        text: 'Life span: ${catBreed.lifeSpan} years'),
                    CharacteristicDetail(
                        icon: Icons.pets_outlined,
                        text: 'Intelligence: ${catBreed.intelligence}'),
                    CharacteristicDetail(
                        icon: Icons.heart_broken_outlined,
                        text: 'Adaptability: ${catBreed.adaptability}'),
                    const Divider(
                      thickness: 0.5,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        'Temperament',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    TemperamentRow(temperament: catBreed.temperament),
                    const Divider(
                      thickness: 0.5,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        'Cat description',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(catBreed.description),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
