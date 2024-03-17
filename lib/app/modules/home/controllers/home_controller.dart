import 'package:get/get.dart';
import 'package:tugas_5_1_api/app/modules/home/models/meal_model.dart';
import 'package:tugas_5_1_api/app/modules/home/provider/meal_provider.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  Future<MealModel> getRestaurants() async {
    final data = await MealProvider().getMeal();
    return data;
  }
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
