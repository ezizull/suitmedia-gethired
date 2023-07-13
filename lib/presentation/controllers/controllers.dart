// export
export 'first.controller.dart';
export 'second.controller.dart';
export 'third.controller.dart';
export 'session.controller.dart';
export 'setting.controller.dart';

// import
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Controller extends GetxController with StateMixin {
  void statusDialog({String errorTitle = ""}) {
    if (status.isLoading) {
      Get.defaultDialog(
        title: '',
        titlePadding: EdgeInsets.zero,
        content: const Center(child: CircularProgressIndicator()),
        contentPadding: const EdgeInsets.only(bottom: 15),
      );
    } else if (status.isError) {
      Get.defaultDialog(
        title: errorTitle,
        titlePadding: const EdgeInsets.only(top: 15, bottom: 5),
        titleStyle: Get.context?.theme.textTheme.titleLarge,
        content: Text(
          "${status.errorMessage}",
          style: Get.context?.theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15),
      );
    }
  }
}
