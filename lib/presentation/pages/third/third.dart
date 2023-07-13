import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gethired/presentation/controllers/controllers.dart';
import 'package:gethired/utils/utils.dart';
import 'widgets/topbar.dart';

class ThirdPage extends GetView<ThirdController> {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThirdController>(builder: (builderContext) {
      final chooseUser = controller.session.chooseUser.value;
      final userName = "${chooseUser?.firstName} ${chooseUser?.lastName}";

      return Scaffold(
        backgroundColor: Colors.white,
        appBar: const TopBar(),
        body: ListView.builder(
          itemCount: 10,
          padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          itemBuilder: (context, index) {
            return CustomButton(
              useConstrain: true,
              height: 80,
              onTap: () {},
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
              border: Border(
                  bottom: BorderSide(
                color: Theme.of(context).colorScheme.onBackground.withOpacity(0.4),
                width: 0.2,
              )),
              child: Container(),
            );
          },
        ),
      );
    });
  }
}
