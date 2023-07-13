import 'package:get/get.dart';
import 'package:gethired/infrastructure/models/models.dart';

import 'package:gethired/presentation/controllers/controllers.dart';

class SessionController extends Controller {
  Rx<User?> chooseUser = Rx<User?>(null);
  RxString name = ''.obs;
}
