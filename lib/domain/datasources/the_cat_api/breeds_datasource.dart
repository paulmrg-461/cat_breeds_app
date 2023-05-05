import 'package:pragma_flutter_cats_app/domain/entities/cat_breed.dart';

abstract class BreedsDatasource {
  Future<List<CatBreed>> getCatBreedsByPage(int page);
}
