import 'package:get/get.dart';

import '../modules/beef/bindings/beef_binding.dart';
import '../modules/beef/views/beef_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () =>  HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BEEF,
      page: () => BeefView(),
      binding: BeefBinding(),
    ),
  ];
}
