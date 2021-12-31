import 'package:get/get.dart';

import '../controllers/reading_screen_controller.dart';

class ReadingScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReadingScreenController>(
      () => ReadingScreenController(),
    );
  }
}
