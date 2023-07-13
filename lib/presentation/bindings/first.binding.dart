import 'package:get/get.dart';
import 'package:gethired/presentation/controllers/controllers.dart';

class FirstBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FirstController());
  }
}
