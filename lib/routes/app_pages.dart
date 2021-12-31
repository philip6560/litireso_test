import 'package:flutter_app/modules/SplashScreen/splash_view.dart';
import 'package:get/get.dart';

import '../modules/BooksScreen/bindings/books_screen_binding.dart';
import '../modules/BooksScreen/views/books_screen_view.dart';
import '../modules/LoginScreen/bindings/login_screen_binding.dart';
import '../modules/LoginScreen/views/login_screen_view.dart';
import '../modules/ReadingScreen/bindings/reading_screen_binding.dart';
import '../modules/ReadingScreen/views/reading_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.BOOKS_SCREEN,
      page: () => BooksScreenView(),
      binding: BooksScreenBinding(),
    ),
    GetPage(
      name: _Paths.READING_SCREEN,
      page: () => ReadingScreenView(),
      binding: ReadingScreenBinding(),
    ),
  ];
}
