import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String theCatApiKey = dotenv.env['THE_CAT_API_KEY'] ?? 'No Api Key.';
}
