import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/core.dart';

class DetailPictureView extends StatelessWidget {
  final DetailPictureController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    final String id = Get.arguments;
    controller.fetchPictureDetail(id);

    return Scaffold(
      appBar: AppBar(title: Text('Detail Photo')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        var picture = controller.pictureDetail;
        return Column(
          children: [
            Image.network(picture['download_url']),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Taken by: ${picture['author']}'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              ),
            ),
          ],
        );
      }),
    );
  }
}
