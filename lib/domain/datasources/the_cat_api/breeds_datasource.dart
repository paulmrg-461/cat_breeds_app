import 'package:cat_breeds_app/domain/entities/cat_breed.dart';

abstract class BreedsDatasource {
  Future<List<CatBreed>> getCatBreedsByPage();
}
