import 'package:flutter/material.dart';
import 'package:pragma_flutter_cats_app/core/exceptions/api_exception.dart';
import 'package:pragma_flutter_cats_app/domain/entities/cat_breed.dart';
import 'package:pragma_flutter_cats_app/domain/repositories/the_cat_api/breeds_repository.dart';

class BreedsProvider extends ChangeNotifier {
  final BreedsRepository breedsRepository;

  String errorMessage = '';
  int _currentPage = 1;
  bool initialLoading = true;
  List<CatBreed> catBreeds = [];

  BreedsProvider({required this.breedsRepository});

  Future<void> loadNextPage() async {
    try {
      final List<CatBreed> newCatBreeds =
          await breedsRepository.getCatBreedsByPage(_currentPage);
      catBreeds.addAll(newCatBreeds);
    } on ApiException catch (e) {
      errorMessage = e.message;
    }

    initialLoading = false;
    notifyListeners();
  }

  void incrementCurrentPage() {
    _currentPage++;
    loadNextPage();
  }
}
