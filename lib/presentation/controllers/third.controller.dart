import 'package:get/get.dart';

import 'package:gethired/presentation/controllers/controllers.dart';
import 'package:gethired/infrastructure/models/models.dart';
import 'package:gethired/infrastructure/usecases/usecases.dart';

class ThirdController extends Controller {
  final UserUseCase userUseCase = Get.find();
  final SessionController session = Get.find();

  Rx<Pagination?> users = Rx<Pagination?>(null);
  RxInt page = 1.obs;
  RxInt perpage = 10.obs;

  @override
  void onInit() async {
    super.onInit();
    loadMore();
  }

  void loadMore() async {
    try {
      change(null, status: RxStatus.loading());
      users.value = await userUseCase.getUsers({
        'page': page.value,
        'perpage': perpage.value,
      });
      change(users.value, status: RxStatus.success());
      update();
    } catch (error) {
      change(null, status: RxStatus.error("error loadMore: $error"));
    }
  }
}
