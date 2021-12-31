import 'package:flutter/material.dart';
import 'package:flutter_app/utils/responsive.dart';
import 'package:flutter_app/widgets/text.dart';


class CustomElevatedButton extends StatelessWidget {

  final String labelText;
  final VoidCallback onPressed;
  final double height, radius;

  const CustomElevatedButton({Key? key, required this.labelText, this.height = 56.0, this.radius = 28.0, required this.onPressed,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    height(value)=> scale_height(value, context);

    return ElevatedButton(
      onPressed: onPressed,
      child: CustomText(
        text: labelText,
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        textAlign: TextAlign.center,
      ),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: Size(MediaQuery.of(context).size.width, height(this.height)),
        primary: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(height(this.radius)),
        ),
      ),
    );
  }
}



class LogoutDialogButton extends StatelessWidget {

  final VoidCallback onPressed;
  final Color color;
  final double height;
  final BorderSide side;
  final Color labelColor;
  final String text;

  LogoutDialogButton({
    Key? key,
    this.side = BorderSide.none,
    this.labelColor = Colors.blue,
    required this.onPressed,
    required this.text,
    required this.color,
    required this.height,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {

    height(value)=> scale_height(value, context);

    return TextButton(
      onPressed: onPressed,
      child: CustomText(
        text: text,
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        textAlign: TextAlign.center,
        color: labelColor,
      ),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(MediaQuery.of(context).size.width, height(this.height))),
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(height(5.0)),
            side: side,
          ),
        ),
      ),
    );
  }
}
