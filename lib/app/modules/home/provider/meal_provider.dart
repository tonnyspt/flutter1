import 'package:tugas_5_1_api/app/modules/home/models/meal_model.dart';
import 'package:get/get.dart';

class MealProvider extends GetConnect {
  Future<MealModel> getMeal() async {
    final response = await get('https://themealdb.com/api/json/v1/1/categories.php');
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return MealModel.fromJson(response.body as Map<String, dynamic>);
    }
  }
}