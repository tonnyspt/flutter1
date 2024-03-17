import 'package:get/get.dart';

import '../controllers/beef_controller.dart';

class BeefBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BeefController>(
      () => BeefController(),
    );
  }
}
