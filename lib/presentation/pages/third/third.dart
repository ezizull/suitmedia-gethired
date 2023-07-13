import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:gethired/presentation/controllers/controllers.dart';
import 'package:gethired/utils/utils.dart';
import 'widgets/topbar.dart';

class ThirdPage extends GetView<ThirdController> {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThirdController>(builder: (builderContext) {
      final users = controller.users.value;

      return Scaffold(
        backgroundColor: Colors.white,
        appBar: const TopBar(),
        body: ListView.builder(
          itemCount: users?.data.length,
          padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          itemBuilder: (context, index) {
            final user = users?.data[index];

            return CustomButton(
              useConstrain: true,
              onTap: () {},
              height: 80,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
              border: Border(
                bottom: BorderSide(
                  color: Theme.of(context).colorScheme.onBackground.withOpacity(0.4),
                  width: 0.2,
                ),
              ),
              child: Row(children: [
                if (user == null) ...[
                  Container(
                    height: 50,
                    width: 50,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: SpinKitRing(
                      color: Theme.of(context).colorScheme.onBackground,
                      lineWidth: 1,
                    ),
                  ),
                ] else ...[
                  Container(
                    height: 50,
                    width: 50,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image.network(user.avatar, fit: BoxFit.cover),
                  ),
                ],
              ]),
            );
          },
        ),
      );
    });
  }
}
