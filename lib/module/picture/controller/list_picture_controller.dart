import 'package:get/get.dart';
import 'package:mini_project/core.dart';

class ListPictureController extends GetxController {
  var pictures = <Map<dynamic, dynamic>>[].obs;
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
      print("Pictures Loaded: ${pictures.length} items");  
    } catch (e) {
      print("Error in fetchPictures: $e"); 
    } finally {
      isLoading(false);
    }
  }
}
