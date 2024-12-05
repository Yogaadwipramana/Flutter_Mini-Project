import 'package:get/get.dart';
import 'package:mini_project/core.dart';
import 'package:mini_project/routes/app_routes.dart';  

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: Routes.LIST_PICTURES,
      page: () => ListPictureView(),
      binding: PictureBinding(),
    ),
    GetPage(
      name: Routes.DETAIL_PICTURES,
      page: () => DetailPictureView(),
      binding: PictureBinding(),
    ),
  ];
}
