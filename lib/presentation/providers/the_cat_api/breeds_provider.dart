import 'package:flutter/material.dart';
import 'package:cat_breeds_app/core/exceptions/api_exception.dart';
import 'package:cat_breeds_app/domain/entities/cat_breed.dart';
import 'package:cat_breeds_app/domain/repositories/the_cat_api/breeds_repository.dart';

class BreedsProvider extends ChangeNotifier {
  final BreedsRepository breedsRepository;

  String errorMessage = '';
  bool initialLoading = true;
  List<CatBreed> catBreeds = [];

  BreedsProvider({required this.breedsRepository});

  Future<void> getCatBreeds() async {
    try {
      catBreeds = await breedsRepository.getCatBreedsByPage();
    } on ApiException catch (e) {
      errorMessage = e.message;
    }

    initialLoading = false;
    notifyListeners();
  }

  Future<List<CatBreed>> searchCatBreeds(String query) async {
    final List<CatBreed> searchResults = catBreeds
        .where((catBreed) =>
            catBreed.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return searchResults;
  }
}
