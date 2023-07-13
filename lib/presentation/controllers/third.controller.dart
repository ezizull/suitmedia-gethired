import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gethired/presentation/controllers/controllers.dart';
import 'package:gethired/infrastructure/models/models.dart';
import 'package:gethired/infrastructure/usecases/usecases.dart';

class ThirdController extends Controller {
  final UserUseCase userUseCase = Get.find();
  final SessionController session = Get.find();

  ScrollController scrollControl = ScrollController();

  Rx<Pagination?> users = Rx<Pagination?>(null);
  RxInt page = 1.obs;
  RxInt perpage = 10.obs;

  @override
  void onInit() async {
    super.onInit();
    loadMoreUser();

    scrollControl.addListener(() {
      if (scrollControl.position.pixels == scrollControl.position.maxScrollExtent) {
        perpage.value += 10;
        loadMoreUser();
      }
    });
  }

  void loadMoreUser() async {
    final lastLength = users.value?.data.length;
    print("ThirdController:: loadMoreUser $lastLength");

    try {
      change(null, status: RxStatus.loading());
      users.value = await userUseCase.getUsers({
        'page': page.value,
        'perpage': perpage.value,
      });
      change(users.value, status: RxStatus.success());

      if (users.value!.data.length == lastLength) {
        perpage.value = users.value!.data.length;
      }

      print("ThirdController :: loadMoreUser ${perpage.value}");

      update();
    } catch (error) {
      change(null, status: RxStatus.error("error loadMoreUser: $error"));
    }
  }
}
