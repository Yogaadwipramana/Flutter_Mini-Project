import 'package:get/get.dart';
import 'package:mini_project/core.dart';

class ListPictureController extends GetxController {
  var pictures = <Map<dynamic, dynamic>>[].obs;  // Pastikan tipe data yang digunakan sesuai
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchPictures();
  }

  void fetchPictures() async {
    isLoading(true);
    try {
      var response = await PictureService().getPictures();

      pictures.assignAll(List<Map<dynamic, dynamic>>.from(response));
    } catch (e) {
      print("Error fetching pictures: $e");
    } finally {
      isLoading(false);
    }
  }
}
