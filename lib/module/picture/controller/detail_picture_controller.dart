import 'package:get/get.dart';  
import 'package:dio/dio.dart';  

class DetailPictureController extends GetxController {
  var pictureDetail = {}.obs;  
  var isLoading = false.obs;  

  void fetchPictureDetail(String id) async {
    isLoading(true);  
    try {
      var response = await Dio().get('https://picsum.photos/id/$id/info');  
      pictureDetail.assignAll(response.data);  
    } catch (e) {
      print("Error fetching picture detail: $e"); 
    } finally {
      isLoading(false); 
    }
  }
}
