import 'package:flutter/material.dart';
import 'package:flutter_app/utils/constants.dart';
import 'package:flutter_app/utils/responsive.dart';
import 'package:flutter_app/widgets/button.dart';
import 'package:flutter_app/widgets/text.dart';
import 'package:flutter_app/widgets/textformfield.dart';

import 'package:get/get.dart';

import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  @override
  Widget build(BuildContext context) {

    height(value)=> scale_height(value, context);

    width(value)=> scale_width(value, context);

    return Scaffold(
      backgroundColor: CustomColor.scaffold,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: width(15.0), right: width(15.0), top: height(50.0)),
          child: Obx(()=>
            Form(
              key: controller.formKey.value,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  CustomText(text: "Log In.", fontSize: 45.0, fontWeight: FontWeight.w700, color: Colors.blue,),

                  SizedBox(height: height(5.0),),
                  
                  CustomText(text: "You rock!", fontSize: 18.0, fontWeight: FontWeight.w300, color: Colors.blue,),

                  SizedBox(height: height(40.0),),

                  CustomFormField(
                      labelText: "User Name",
                      controller: controller.usernameController,
                      textInputAction: TextInputAction.next,
                      validator: (val){
                        return controller.validateUserName(val);
                      }
                      ),

                  SizedBox(
                    height: height(50.0),
                  ),

                  CustomFormField(
                      labelText: "Password",
                      controller: controller.passwordController,
                      obscureText: controller.hidePassword,
                      suffixIcon: GestureDetector(
                        child: Icon(
                          controller.returnIcon(), color: Colors.black,
                          semanticLabel: '${controller.hidePassword ? 'Show' : 'Hide'} password',
                        ),
                        onTap: () => controller.hidePassword =
                        !controller.hidePassword,
                      ),
                      validator: (val){
                        return controller.validatePassword(val);
                      }
                  ),


                  SizedBox(height: height(60.0),),


                  CustomElevatedButton(
                    labelText: "Login",
                    onPressed: ()=> controller.logIn(),
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
