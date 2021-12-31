import 'dart:math';

import 'package:flutter/material.dart';

double scale_width(double value, BuildContext? context){

  if(context == null) throw "value and context cannot be empty";

  // width of the screen the design was made on
  double width = MediaQuery.of(context).orientation == Orientation.portrait ? 414.0 : 723.0;

  double width_of_device = MediaQuery.of(context).size.width.floorToDouble();

  // the input value divided by screen width from the design template is then multiplied to
  // give the width based on different screen size
  double actual_width_based_on_screensize = (value/width) * (width_of_device);

  // convert width to two decimal places
  num mod = pow(10.0, 4);
  double final_width = ((actual_width_based_on_screensize * mod).round().toDouble() / mod);

  return final_width;
  
}


double scale_height(double value, BuildContext? context){

  if(context == null) throw "value and context cannot be empty";

  // height of the screen the design was made on
  double height = MediaQuery.of(context).orientation == Orientation.portrait ? 723.0 : 414.0;

  double height_of_device = MediaQuery.of(context).size.height.floorToDouble();
  double safe_area= MediaQuery.of(context).padding.bottom.floorToDouble();

  // the input value divided by screen width from the design template is then multiplied to
  // give the width based on different screen size

  double actual_height_based_on_screensize = (value/height) * (height_of_device - safe_area);

  // convert width to two decimal places
  num mod = pow(10.0, 4);
  double final_height = ((actual_height_based_on_screensize * mod).round().toDouble() / mod);

  return final_height;
}


