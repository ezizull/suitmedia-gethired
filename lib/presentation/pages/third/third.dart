import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gethired/presentation/controllers/controllers.dart';

class ThirdPage extends GetView<ThirdController> {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThirdController>(builder: (builderContext) {
      return const Scaffold(
        body: Center(
          child: Text("Third Page"),
        ),
      );
    });
  }
}
