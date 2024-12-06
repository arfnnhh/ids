import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/module/picture/controller/list_picture_controller.dart';
import 'package:mini_project/module/picture/widget/list_content_widget.dart';
import 'package:mini_project/shared/widget/loading_widget.dart';

class ListPictureView extends StatelessWidget {
  const ListPictureView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ListPictureController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('List Photo'),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: Loading());
        }
        if (controller.photos.isEmpty) {
          return const Center(child: Text('No photos available.'));
        }

        return ListView.builder(
          itemCount: controller.photos.length,
          padding: const EdgeInsets.all(8.0),
          itemBuilder: (context, index) {
            final photo = controller.photos[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: ListContentWidget(
                isLoading: false,
                imageUrl: photo['download_url'],
                author: photo['author'],
                onTap: () {
                  Get.toNamed(
                    '/detailpicture',
                    arguments: {
                      'imageUrl': photo['download_url'],
                      'title': photo['author'],
                    },
                  );
                },
              ),
            );
          },
        );
      }),
    );
  }
}
