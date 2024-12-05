import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/core.dart';

class ListPictureView extends StatelessWidget {
  final ListPictureController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Photo')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: controller.pictures.length,
          itemBuilder: (context, index) {
            var picture = controller.pictures[index];
            return GestureDetector(
              onTap: () => Get.toNamed('/detail', arguments: picture['id']),
              child: Card(
                child: Column(
                  children: [
                    Image.network(picture['download_url']),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('by: ${picture['author']}'),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
