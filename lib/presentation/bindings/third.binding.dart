import 'package:get/get.dart';
import 'package:gethired/presentation/controllers/controllers.dart';

class ThirdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThirdController());
  }
}
