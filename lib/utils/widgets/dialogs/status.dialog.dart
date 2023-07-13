import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatusDialog extends StatelessWidget {
  const StatusDialog({
    super.key,
    required this.status,
    this.errorMessage = "",
  });

  final RxStatus status;
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    Widget dialog;

    if (status.isLoading) {
      Get.defaultDialog(
        title: '',
        titlePadding: EdgeInsets.zero,
        content: const Center(child: CircularProgressIndicator()),
        contentPadding: const EdgeInsets.only(bottom: 15),
      );
    } else if (status.isError) {
      Get.defaultDialog(
        title: errorMessage,
        titlePadding: const EdgeInsets.only(top: 15, bottom: 5),
        titleStyle: Theme.of(context).textTheme.titleLarge,
        content: Text(
          "${status.errorMessage}",
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15),
      );
    }
    return const Placeholder();
  }
}
