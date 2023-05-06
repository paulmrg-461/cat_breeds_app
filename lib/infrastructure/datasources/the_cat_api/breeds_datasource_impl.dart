import 'package:pragma_flutter_cats_app/core/helpers/http_request.dart';
import 'package:pragma_flutter_cats_app/domain/datasources/the_cat_api/breeds_datasource.dart';
import 'package:pragma_flutter_cats_app/domain/entities/cat_breed.dart';

class BreedsDatasourceImpl implements BreedsDatasource {
  final HttpRequest httpRequest = HttpRequest();
  @override
  Future<List<CatBreed>> getCatBreedsByPage() async {
    final List response =
        await httpRequest.httpGetResponse(uri: 'breeds') as List;
    return response.map((catBreed) => CatBreed.fromJson(catBreed)).toList();
  }
}
