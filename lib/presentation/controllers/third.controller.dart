import 'package:get/get.dart';

import 'package:gethired/presentation/controllers/controllers.dart';
import 'package:gethired/infrastructure/models/models.dart';
import 'package:gethired/infrastructure/usecases/usecases.dart';

class ThirdController extends Controller {
  final UserUseCase userUseCase = Get.find();
  final SessionController session = Get.find();

  Rx<Pagination?> users = Rx<Pagination?>(null);
  RxInt page = 0.obs;

  @override
  void onInit() async {
    super.onInit();
    users.value = await userUseCase.getUsers({
      'page': page.value,
    });
  }
}
