import 'package:get/get.dart';
import 'package:gethired/presentation/pages/pages.dart';

import 'routes.dart';

class GetPages {
  static List<GetPage> routers = [];

  // notfound
  static GetPage notFound = GetPage(
    name: Routes.NOTFOUND,
    page: () => const NotFoundPage(),
  );
}
