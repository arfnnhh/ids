part of 'app_pages.dart';

abstract class _Paths {
  static const initialRoute = "/";
  static const listPicture = "/listpicture";
  static const detailPicture = "/detailpicture";
}

abstract class Routes {
  Routes._();
  static const initialRoute = _Paths.initialRoute;
  static const listPicture = _Paths.listPicture;
  static const detailPicture = _Paths.detailPicture;
}