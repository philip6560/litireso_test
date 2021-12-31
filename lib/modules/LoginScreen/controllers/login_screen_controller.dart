import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/shared_preferences.dart';
import 'package:flutter_app/routes/app_pages.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {

  static const user = "user";
  static const isLoggedIn = "isLoggedIn";

  Rx<GlobalKey<FormState>> formKey = GlobalKey<FormState>().obs;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  final _hidePassword = Rx<bool>(true);

  set hidePassword(bool showPassword) => _hidePassword.value = showPassword;

  bool get hidePassword => _hidePassword.value;



  IconData returnIcon(){

    if(hidePassword){

      return Icons.visibility_off;
    }
    else{

      return Icons.visibility;
    }
  }


  // method to validate username
  validateUserName(val){

    if(val.isNotEmpty){

      if(val.toString().trim() != user){

        return "Incorrect username";
      }

    }
    else{

      return "Field is required";
    }
  }


  // method to validate password
  validatePassword(val){

    if(val.isNotEmpty){

      if(val.toString().trim() != user){

        return "Incorrect password";
      }

    }
    else{

      return "Field is required";
    }
  }


  // validate details
  logIn()async{

    if(formKey.value.currentState!.validate()){

      // save data
      formKey.value.currentState!.save();

      await Preferences.write(key: StoreKey.userDetails, value: isLoggedIn);

      Get.offNamed(Routes.BOOKS_SCREEN);
    }

  }

}
