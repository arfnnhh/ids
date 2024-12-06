import 'package:get/get.dart';
import 'package:mini_project/service/picture/picture_service.dart';

class ListPictureController extends GetxController {
  final PictureService _service = PictureService();
  var photos = <dynamic>[].obs; 
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchPhotos();
  }

  void fetchPhotos() async {
    try {
      isLoading(true);
      final response = await _service.fetchListPhotos();
      if (response.statusCode == 200) {
        photos.value = response.data;
      } else {
        Get.snackbar("Error", "Failed to load photos");
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      isLoading(false);
    }
  }
}
