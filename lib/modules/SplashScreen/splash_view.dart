import 'package:flutter/material.dart';
import 'package:flutter_app/utils/general_app_controller.dart';
import 'package:flutter_app/widgets/text.dart';
import 'package:get/get.dart';


class SplashScreenView extends StatefulWidget {
  @override
  _SplashScreenViewState createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp){

      Get.find<GeneralController>().isUserLoggedIn();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(
            child: Container(
              child: CustomText(text: "Litireso.", fontSize: 130.0, color: Colors.blue,),
            ),
          ),

        ],
      ),
    );
  }
}
