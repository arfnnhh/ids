import 'package:get/get.dart';
import 'package:mini_project/module/picture/binding/picture_binding.dart';
import 'package:mini_project/module/picture/view/detail_picture_view.dart';
import 'package:mini_project/module/picture/view/list_picture_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initialRoute = Routes.initialRoute;
  static const listPicture = Routes.listPicture;
  static const detailPicture = Routes.detailPicture;

  static final routes = [
    GetPage(
      name: initialRoute, 
      page: () => const ListPictureView(),
      binding: PictureBinding(),
    ),
    GetPage(
      name: detailPicture, 
      page: () => const DetailPictureView(),
      binding: PictureBinding(),
    ),
  ];
}
