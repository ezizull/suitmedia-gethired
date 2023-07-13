// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gethired/presentation/controllers/controllers.dart';
import 'package:gethired/presentation/routes/routes.dart';
import 'package:gethired/utils/utils.dart';

class SecondPage extends GetView<SecondController> {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SessionController>(
      init: controller.session,
      builder: (session) {
        final chooseUser = session.chooseUser.value;
        final userName = "${chooseUser?.firstName} ${chooseUser?.lastName}";

        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(title: const Text("Halaman Kedua")),
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
                        child: const Text("Selamat Datang"),
                      ),
                      Text(
                        "${session.name.value}",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
              ),

              // scrollable
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Terpilih ${chooseUser != null ? userName : "Nama Pengguna"}",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),

              // choose user
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(
                  height: 41,
                  width: context.width - 60,
                  onTap: () => Get.toNamed(Routes.THIRD),
                  margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).colorScheme.primary,
                  child: Text(
                    "Pilih Pengguna",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontFamily: Theme.of(context).textTheme.bodyLarge!.fontFamily,
                      fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
                      fontStyle: Theme.of(context).textTheme.bodyLarge!.fontStyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
