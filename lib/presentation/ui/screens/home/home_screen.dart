import 'package:flutter/material.dart';
import 'package:pragma_flutter_cats_app/presentation/providers/the_cat_api/breeds_provider.dart';
import 'package:pragma_flutter_cats_app/presentation/ui/screens/home/widgets/cards_listview.dart';
import 'package:pragma_flutter_cats_app/presentation/ui/shared/error_view.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final BreedsProvider breedsProvider = context.watch<BreedsProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catbreeds'),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.dark_mode_outlined))
        ],
      ),
      body: breedsProvider.initialLoading
          ? const Center(child: CircularProgressIndicator.adaptive())
          : NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                if (scrollNotification is ScrollEndNotification &&
                    scrollNotification.metrics.extentAfter == 0) {
                  breedsProvider.incrementCurrentPage();
                }
                return true;
              },
              child: (breedsProvider.errorMessage == '')
                  ? CardsListview(catBreeds: breedsProvider.catBreeds)
                  : ErrorView(errorMessage: breedsProvider.errorMessage)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.catching_pokemon),
      ),
    );
  }
}
