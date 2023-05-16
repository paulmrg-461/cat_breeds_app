import 'package:cat_breeds_app/domain/entities/cat_breed.dart';

abstract class BreedsRepository {
  Future<List<CatBreed>> getCatBreedsByPage();
}
