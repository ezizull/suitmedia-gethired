import 'package:get/get.dart';
import 'package:gethired/presentation/bindings/bindings.dart';
import 'package:gethired/presentation/pages/pages.dart';

import 'routes.dart';

class GetPages {
  static List<GetPage> routers = [
    // first
    GetPage(
      name: Routes.FIRST,
      page: () => const FirstPage(),
      binding: FirstBinding(),
    ),

    // second
    GetPage(
      name: Routes.SECOND,
      page: () => const SecondPage(),
      binding: SecondBinding(),
    ),

    // third
    GetPage(
      name: Routes.THIRD,
      page: () => const ThirdPage(),
      binding: ThirdBinding(),
    ),
  ];

  // notfound
  static GetPage notFound = GetPage(
    name: Routes.NOTFOUND,
    page: () => const NotFoundPage(),
  );
}
