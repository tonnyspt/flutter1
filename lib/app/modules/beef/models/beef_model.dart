// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

BeefModel BeefModelFromJson(String str) => BeefModel.fromJson(json.decode(str));

String BeefModelToJson(BeefModel data) => json.encode(data.toJson());

class BeefModel {
    List<Meal> meals;

    BeefModel({
      required this.meals,
    });

    factory BeefModel.fromJson(Map<String, dynamic> json) => BeefModel(
        meals: List<Meal>.from(json["meals"].map((x) => Meal.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "meals": List<dynamic>.from(meals.map((x) => x.toJson())),
    };
}

class Meal {
    String strMeal;
    String strMealThumb;
    String idMeal;

    Meal({
      required this.strMeal,
      required this.strMealThumb,
      required this.idMeal,
    });

    factory Meal.fromJson(Map<String, dynamic> json) => Meal(
        strMeal: json["strMeal"],
        strMealThumb: json["strMealThumb"],
        idMeal: json["idMeal"],
    );

    Map<String, dynamic> toJson() => {
        "strMeal": strMeal,
        "strMealThumb": strMealThumb,
        "idMeal": idMeal,
    };
}
