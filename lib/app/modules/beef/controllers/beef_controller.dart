import 'package:get/get.dart';
import '../../beef/models/beef_model.dart';
import '../../beef/provider/beef_provider.dart';

class BeefController extends GetxController {
  //TODO: Implement BeefController
  Future<BeefModel> getBeef(String category) async {
    final data = await BeefProvider().getBeef(category);
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
