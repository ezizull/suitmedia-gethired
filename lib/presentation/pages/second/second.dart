// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gethired/presentation/controllers/controllers.dart';
import 'package:gethired/utils/utils.dart';
import 'widgets/topbar.dart';

class SecondPage extends GetView<SecondController> {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SecondController>(builder: (builderContext) {
      final user = controller.session.user.value;
      final userName = "${user?.firstName} ${user?.lastName}";

      return Scaffold(
        backgroundColor: Colors.white,
        appBar: const TopBar(),
        body: Stack(
          children: [
            // user
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: context.width,
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 6),
                      child: const Text("Welcome"),
                    ),
                    Text(
                      "${controller.session.name.value}",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
            ),

            // scrollable
            Container(
              alignment: Alignment.center,
              child: Text(
                "Selected ${user != null ? userName : "User Name"}",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),

            // choose user
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomButton(
                height: 41,
                width: context.width - 60,
                onTap: () {},
                margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                borderRadius: BorderRadius.circular(12),
                color: Theme.of(context).colorScheme.primary,
                child: Text(
                  "Choose a User",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontFamily: Theme.of(context).textTheme.bodySmall!.fontFamily,
                    fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                    fontStyle: Theme.of(context).textTheme.bodySmall!.fontStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
