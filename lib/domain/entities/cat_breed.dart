import 'dart:convert';

CatBreed catBreedFromJson(String str) => CatBreed.fromJson(json.decode(str));

String catBreedToJson(CatBreed data) => json.encode(data.toJson());

class CatBreed {
  final String id;
  final String name;
  final String origin;
  final String countryCode;
  final String description;
  final String lifeSpan;
  final int adaptability;
  final int intelligence;
  final String temperament;
  final String image;

  CatBreed({
    required this.id,
    required this.name,
    required this.origin,
    required this.countryCode,
    required this.description,
    required this.lifeSpan,
    required this.adaptability,
    required this.intelligence,
    required this.temperament,
    required this.image,
  });

  factory CatBreed.fromJson(Map<String, dynamic> json) => CatBreed(
        id: json["id"],
        name: json["name"],
        origin: json["origin"],
        countryCode: json["country_code"],
        description: json["description"],
        lifeSpan: json["life_span"],
        adaptability: json["adaptability"],
        intelligence: json["intelligence"],
        temperament: json["temperament"],
        image: json["image"] != null
            ? json["image"]["url"]
            : 'https://cdn.dribbble.com/users/252114/screenshots/3840347/mong03b.gif',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "origin": origin,
        "country_code": countryCode,
        "description": description,
        "life_span": lifeSpan,
        "adaptability": adaptability,
        "intelligence": intelligence,
        "temperament": temperament,
        "image": image,
      };
}
