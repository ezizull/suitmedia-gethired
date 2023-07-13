import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gethired/presentation/controllers/controllers.dart';

class FirstController extends Controller {
  final SessionController session = Get.find();

  final nameControl = TextEditingController();
  final dromControl = TextEditingController();
}
