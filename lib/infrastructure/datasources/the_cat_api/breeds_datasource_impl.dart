import 'package:pragma_flutter_cats_app/core/helpers/http_request.dart';
import 'package:pragma_flutter_cats_app/domain/datasources/the_cat_api/breeds_datasource.dart';
import 'package:pragma_flutter_cats_app/domain/entities/cat_breed.dart';

class BreedsDatasourceImpl implements BreedsDatasource {
  final HttpRequest httpRequest = HttpRequest();
  final int _perPage = 10;
  @override
  Future<List<CatBreed>> getCatBreedsByPage(int page) async {
    final List response = await httpRequest.httpGetResponse(
        uri: 'breeds?page=$page&limit=$_perPage') as List;
    return response.map((catBreed) => CatBreed.fromJson(catBreed)).toList();
  }
}
