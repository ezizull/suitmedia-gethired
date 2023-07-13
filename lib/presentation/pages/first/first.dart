import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gethired/presentation/controllers/controllers.dart';

class FirstPage extends GetView<FirstController> {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FirstController>(builder: (builderContext) {
      return const Scaffold(
        body: Center(
          child: Text("First Page"),
        ),
      );
    });
  }
}
