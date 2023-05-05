import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pragma_flutter_cats_app/config/routes/app_routes.dart';
import 'package:pragma_flutter_cats_app/config/theme/app_theme.dart';
import 'package:pragma_flutter_cats_app/infrastructure/datasources/the_cat_api/breeds_datasource_impl.dart';
import 'package:pragma_flutter_cats_app/infrastructure/repositories/the_cat_api/breeds_repository_impl.dart';
import 'package:pragma_flutter_cats_app/presentation/providers/the_cat_api/breeds_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final BreedsRepositoryImpl breedsRepository =
        BreedsRepositoryImpl(breedsDatasource: BreedsDatasourceImpl());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false,
            create: (_) => BreedsProvider(breedsRepository: breedsRepository)
              ..loadNextPage()),
      ],
      child: MaterialApp(
          title: 'Pragma Cats App',
          initialRoute: AppRoutes.initialRoute,
          routes: AppRoutes.routes,
          theme: AppTheme().getTheme()),
    );
  }
}
