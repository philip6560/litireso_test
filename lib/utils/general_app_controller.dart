
import 'package:flutter_app/utils/shared_preferences.dart';
import 'package:flutter_app/routes/app_pages.dart';
import 'package:get/get.dart';

class GeneralController extends GetxService{

  static const isLoggedIn = "isLoggedIn";

  RxBool isAuthenticated = false.obs;


  Future<GeneralController> init()async{

    try{

      var getLoginStatus = await Preferences.read(key: StoreKey.userDetails);

      if(getLoginStatus == isLoggedIn){

        isAuthenticated.value = true;
      }

      return this;

    }
    catch(e){

      isAuthenticated.value = false;

      return this;
    }
  }


  isUserLoggedIn()async{

    if(isAuthenticated.isTrue){
      
      await Future.delayed(Duration(milliseconds: 900), (){

        Get.offNamed(Routes.BOOKS_SCREEN);
      });

    }
    else{

      await Future.delayed(Duration(milliseconds: 900), (){

        Get.offNamed(Routes.LOGIN_SCREEN);
      });
    }
  }


  logOut(){

    Preferences.delete(key: StoreKey.userDetails);

    Get.offAllNamed(Routes.LOGIN_SCREEN);
  }

}