import 'package:get/get.dart';
import 'package:gethired/presentation/controllers/controllers.dart';

class SecondBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecondController());
  }
}
