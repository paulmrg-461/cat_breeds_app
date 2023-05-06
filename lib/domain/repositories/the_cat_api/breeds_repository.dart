import 'package:pragma_flutter_cats_app/domain/entities/cat_breed.dart';

abstract class BreedsRepository {
  Future<List<CatBreed>> getCatBreedsByPage();
}
