

import 'package:flutter/material.dart';
import 'package:flutter_app/utils/general_app_controller.dart';
import 'package:flutter_app/utils/responsive.dart';
import 'package:flutter_app/widgets/button.dart';
import 'package:flutter_app/widgets/text.dart';
import 'package:get/get.dart';

logOutDialog(BuildContext context){

  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context){

        width(value)=> scale_width(value, context);

        height(value)=> scale_height(value, context);

        return Center(
          child: Material(
            color: Colors.transparent,
            child: Container(
              height: height(100.0),
              margin: EdgeInsets.symmetric(horizontal: width(15.5)),
              padding: EdgeInsets.all(height(8.0)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(height(3.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  CustomText(
                    text: "Do you wan to log out?",
                    fontSize: 18.0,
                  ),

                  SizedBox(height: height(12.0),),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      // no button
                      Flexible(
                        child: LogoutDialogButton(
                          text: "No",
                          onPressed: ()=> Get.back(),
                          color: Colors.white,
                          height: 20.0,
                          side: BorderSide(color: Colors.blue),
                        ),
                      ),

                      SizedBox(width: width(20.0),),

                      Flexible(
                        child: LogoutDialogButton(
                          text: "Yes",
                          onPressed: ()=> Get.find<GeneralController>().logOut(),
                          color: Colors.blue,
                          height: 20.0,
                          labelColor: Colors.white,
                        ),
                      ),


                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
  );
}