import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/module/picture/controller/detail_picture_controller.dart';
import 'package:mini_project/module/picture/widget/detail_content_widget.dart'; // Import DetailContentWidget

class DetailPictureView extends StatelessWidget {
  const DetailPictureView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailPictureController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Photo"),
      ),
      body: Center(
        child: Obx(() => DetailContentWidget(
          imageUrl: controller.imageUrl.value,
          author: controller.title.value,
        )),
      ),
    );
  }
}
