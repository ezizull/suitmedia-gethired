import 'package:get/get.dart';
import 'package:gethired/infrastructure/models/models.dart';

import 'package:gethired/presentation/controllers/controllers.dart';

class SessionController extends Controller {
  Rx<User?> user = Rx<User?>(null);
  RxString name = ''.obs;
}
