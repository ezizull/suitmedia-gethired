import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:gethired/presentation/controllers/controllers.dart';
import 'package:gethired/presentation/routes/routes.dart';
import 'package:gethired/utils/languages/languages.dart';
import 'package:gethired/utils/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Get.put(SettingController());
  Get.put(SessionController());

  String initialRoute = Routes.FIRST;
  runApp(Main(initialRoute: initialRoute));
}

class Main extends GetView<SettingController> {
  final String initialRoute;
  const Main({required this.initialRoute, super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return GetBuilder<SettingController>(builder: (builderContext) {
      return GetMaterialApp(
        builder: (context, child) => ResponsiveBreakpoints.builder(
          child: ClampingScrollWrapper.builder(context, child!),
          breakpoints: [
            const Breakpoint(start: 0, end: 350, name: MOBILE),
            const Breakpoint(start: 351, end: 600, name: TABLET),
            const Breakpoint(start: 601, end: 800, name: DESKTOP),
            const Breakpoint(start: 801, end: 1300, name: 'XL'),
          ],
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: initialRoute,
        unknownRoute: GetPages.notFound,
        getPages: GetPages.routers,
        theme: AppThemes.light,
        darkTheme: AppThemes.dark,
        themeMode: controller.lightTheme.value ? ThemeMode.light : ThemeMode.dark,
        translationsKeys: AppTranslation.translations,
        locale: const Locale('en', 'EN'),
      );
    });
  }
}
