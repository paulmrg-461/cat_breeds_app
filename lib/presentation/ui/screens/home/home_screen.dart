import 'package:flutter/material.dart';
import 'package:cat_breeds_app/presentation/delegates/search_cat_breed_delegate.dart';
import 'package:cat_breeds_app/presentation/providers/the_cat_api/breeds_provider.dart';
import 'package:cat_breeds_app/presentation/providers/theme_provider/theme_provider.dart';
import 'package:cat_breeds_app/presentation/ui/screens/home/widgets/cards_listview.dart';
import 'package:cat_breeds_app/presentation/ui/shared/error_view.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final BreedsProvider breedsProvider = context.watch<BreedsProvider>();
    final ThemeProvider themeProvider = Provider.of(context);
    final bool isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cat breeds'),
        actions: [
          IconButton(
              tooltip: isDarkMode ? 'Set light theme' : 'Set dark theme',
              onPressed: () => themeProvider.toggleDarkMode(),
              icon: isDarkMode
                  ? const Icon(Icons.light_mode_outlined)
                  : const Icon(Icons.dark_mode_outlined)),
          IconButton(
              tooltip: 'Search cat breeds',
              onPressed: () => showSearch(
                  context: context,
                  delegate: SearchCatBreedDelegate(
                      searchCatBreedsCallback: breedsProvider.searchCatBreeds)),
              icon: const Icon(Icons.search_outlined)),
        ],
      ),
      body: breedsProvider.initialLoading
          ? const Center(child: CircularProgressIndicator.adaptive())
          : (breedsProvider.errorMessage == '')
              ? CardsListview(catBreeds: breedsProvider.catBreeds)
              : ErrorView(errorMessage: breedsProvider.errorMessage),
    );
  }
}
