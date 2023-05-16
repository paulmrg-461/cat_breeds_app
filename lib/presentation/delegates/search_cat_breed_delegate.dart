import 'package:flutter/material.dart';
import 'package:cat_breeds_app/domain/entities/cat_breed.dart';
import 'package:cat_breeds_app/presentation/ui/screens/home/widgets/cards_listview.dart';
import 'package:cat_breeds_app/presentation/ui/shared/error_view.dart';

typedef SearchCatBreedsCallback = Future<List<CatBreed>> Function(String query);

class SearchCatBreedDelegate extends SearchDelegate<CatBreed?> {
  final SearchCatBreedsCallback searchCatBreedsCallback;

  SearchCatBreedDelegate({required this.searchCatBreedsCallback});

  @override
  String get searchFieldLabel => 'Search cat breed';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          tooltip: 'Reset search',
          onPressed: () => query = '',
          icon: const Icon(Icons.close_outlined))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        tooltip: 'Close',
        onPressed: () => close(context, null),
        icon: const Icon(Icons.arrow_back_ios_new));
  }

  @override
  Widget buildResults(BuildContext context) => buildResultsAndSuggestions();

  @override
  Widget buildSuggestions(BuildContext context) => buildResultsAndSuggestions();

  FutureBuilder<List<CatBreed>> buildResultsAndSuggestions() {
    return FutureBuilder<List<CatBreed>>(
      future: searchCatBreedsCallback(query),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: ErrorView(errorMessage: 'Cat breeds not found.'),
          );
        }

        if (snapshot.hasData) {
          final List<CatBreed> catBreeds = snapshot.data ?? [];
          return catBreeds.isEmpty
              ? const Center(
                  child: ErrorView(errorMessage: 'Cat breeds not found.'),
                )
              : CardsListview(catBreeds: catBreeds);
        }

        return const Center(
          child: CircularProgressIndicator.adaptive(),
        );
      },
    );
  }
}
