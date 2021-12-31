import 'package:flutter/material.dart';
import 'package:flutter_app/routes/app_pages.dart';
import 'package:flutter_app/utils/general_app_controller.dart';

import 'package:get/get.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  await Get.putAsync(()=> GeneralController().init());

  runApp(GetMaterialApp(
    title: "Application",
    initialRoute: AppPages.initial,
    getPages: AppPages.routes,
    debugShowCheckedModeBanner: false,
  ));

}


