import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:gethired/presentation/controllers/controllers.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({super.key, required this.controller});

  final ThirdController controller;

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      surfaceTintColor: Theme.of(context).colorScheme.background,
      elevation: 0,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.2),
        child: Container(
          color: Theme.of(context).colorScheme.onBackground,
          height: 0.2,
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.chevron_left),
        color: Theme.of(context).colorScheme.secondary,
        onPressed: () => Get.back(),
      ),
      centerTitle: true,
      title: Text(
        "Third Screen",
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
