import 'package:cat_breeds_app/domain/datasources/the_cat_api/breeds_datasource.dart';
import 'package:cat_breeds_app/domain/entities/cat_breed.dart';
import 'package:cat_breeds_app/domain/repositories/the_cat_api/breeds_repository.dart';

class BreedsRepositoryImpl implements BreedsRepository {
  final BreedsDatasource breedsDatasource;

  BreedsRepositoryImpl({required this.breedsDatasource});

  @override
  Future<List<CatBreed>> getCatBreedsByPage() =>
      breedsDatasource.getCatBreedsByPage();
}
