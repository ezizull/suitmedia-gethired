import 'package:get/get.dart';

import 'package:gethired/presentation/controllers/controllers.dart';
import 'package:gethired/utils/themes/themes.dart';

class SettingController extends Controller {
  RxBool lightTheme = true.obs;

  changeTheme() {
    lightTheme.value = !lightTheme.value;
    Get.changeTheme(lightTheme.value ? AppThemes.light : AppThemes.dark);
    update();
  }
}
