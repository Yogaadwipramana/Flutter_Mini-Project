import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/core.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    print("Flutter Error: ${details.exceptionAsString()}");
  };

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => ListPictureView(),
          binding: PictureBinding(),
        ),
        GetPage(
          name: '/detail',
          page: () => DetailPictureView(),
        ),
      ],
    );
  }
}
