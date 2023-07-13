import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gethired/presentation/controllers/controllers.dart';

class SecondPage extends GetView<SecondController> {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SecondController>(builder: (builderContext) {
      return const Scaffold(
        body: Center(
          child: Text("Second Page"),
        ),
      );
    });
  }
}
