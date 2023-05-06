import 'package:flutter/material.dart';
import 'package:pragma_flutter_cats_app/domain/entities/cat_breed.dart';

class SearchCatBreedDelegate extends SearchDelegate<CatBreed?> {
  @override
  String get searchFieldLabel => 'Search cat breed';

  @override
  List<Widget>? buildActions(BuildContext context) {
    print('query: $query');
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
  Widget buildResults(BuildContext context) {
    return Text('buildResults');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text('buildSuggestions');
  }
}
