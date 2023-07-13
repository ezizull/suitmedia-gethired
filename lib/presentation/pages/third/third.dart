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
      final loading = controller.status.isLoading;

      return Scaffold(
        backgroundColor: Colors.white,
        appBar: TopBar(controller: controller),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: controller.scrollControl,
                itemCount: users?.data.length,
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                itemBuilder: (context, index) {
                  final user = users?.data[index];
                  final userName = "${user?.firstName} ${user?.lastName}";

                  return CustomButton(
                    useConstrain: true,
                    onTap: () {
                      controller.session.chooseUser.value = user;
                      controller.session.update();
                    },
                    height: 80,
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                    border: Border(
                      bottom: BorderSide(
                        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.4),
                        width: 0.2,
                      ),
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      if (user == null) ...[
                        SizedBox(
                          child: SpinKitRing(
                            color: Theme.of(context).colorScheme.onBackground,
                            lineWidth: 1,
                          ),
                        ),
                      ] else ...[
                        Container(
                          height: 50,
                          width: 50,
                          margin: const EdgeInsets.only(right: 20),
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.network(user.avatar, fit: BoxFit.cover),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(userName, style: Theme.of(context).textTheme.titleSmall),
                              const SizedBox(height: 5),
                              Text(user.email, style: Theme.of(context).textTheme.bodySmall),
                            ],
                          ),
                        ),
                      ],
                    ]),
                  );
                },
              ),
            ),
            if (loading) ...[
              CustomButton(
                useConstrain: true,
                height: 80,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                border: Border(
                  bottom: BorderSide(
                    color: Theme.of(context).colorScheme.onBackground.withOpacity(0.4),
                    width: 0.2,
                  ),
                ),
                child: SpinKitRing(
                  color: Theme.of(context).colorScheme.onBackground,
                  lineWidth: 1,
                ),
              ),
            ],
          ],
        ),
      );
    });
  }
}
