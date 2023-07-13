import 'package:get/get.dart';

import 'package:gethired/infrastructure/repository/repository.dart';
import 'package:gethired/infrastructure/usecases/usecases.dart';
import 'package:gethired/presentation/controllers/controllers.dart';

class ThirdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserUseCase(userRepo: UserRepo()));
    Get.put(ThirdController(), permanent: true);
  }
}
