import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String theCatApiKey = dotenv.env['THE_CAT_API_KEY'] ?? 'No Api Key.';
  static const String theCatApiBaseUrl = 'https://api.thecatapi.com/v1';
  static final Map<String, String> theCatApiHeaders = <String, String>{
    'Content-type': 'application/json',
    'Accept': 'application/json',
    'x-api-key': theCatApiKey
  };
}
