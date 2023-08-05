import 'package:crickbuzz_api/screen_getx/home_screen/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    getPages: [
      GetPage(
        name: '/',
        page: () => HomeScreen(),
      ),
    ],
  ));
}

