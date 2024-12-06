import 'package:get/get.dart';

class DetailPictureController extends GetxController {
  var imageUrl = ''.obs;
  var title = ''.obs;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments as Map<String, dynamic>?;

    imageUrl.value = arguments?['imageUrl'] ?? '';
    title.value = arguments?['title'] ?? '';
  }
}
