import 'package:get/get.dart';

import '../controllers/books_screen_controller.dart';

class BooksScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BooksScreenController>(
      () => BooksScreenController(),
    );
  }
}
