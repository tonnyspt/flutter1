import 'package:get/get.dart';
import '../models/beef_model.dart';

class BeefProvider extends GetConnect {
  Future<BeefModel> getBeef(String category) async {
    final response = await get('https://themealdb.com/api/json/v1/1/filter.php?c=$category');
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return BeefModel.fromJson(response.body as Map<String, dynamic>);
    }
  }
}