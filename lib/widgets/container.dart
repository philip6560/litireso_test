import 'package:flutter/material.dart';
import 'package:flutter_app/data/models/books_models.dart';
import 'package:flutter_app/modules/BooksScreen/controllers/books_screen_controller.dart';
import 'package:flutter_app/utils/constants.dart';
import 'package:flutter_app/utils/responsive.dart';
import 'package:flutter_app/widgets/button.dart';
import 'package:flutter_app/widgets/text.dart';
import 'package:get/get.dart';



class BookContainer extends StatelessWidget {

  final bookController = Get.find<BooksScreenController>();

  final BookModel book;

  BookContainer({required Key key, required this.book}):super(key: key);

  @override
  Widget build(BuildContext context) {

    height(value)=> scale_height(value, context);

    width(value)=> scale_width(value, context);

    return Container(
      padding: EdgeInsets.all(height(15.0)),
      margin: EdgeInsets.symmetric(horizontal: width(15.0), vertical: height(8.0)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(height(15.0)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 10.0),
              color: CustomColor.container_Color,
              blurRadius: 20,
              spreadRadius: -30.0,
            ),
          ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [

              Flexible(
                child: CustomText(text: book.title, fontSize: 16.0, maxLines: 3,),
              ),
            ],
          ),

          SizedBox(height: height(20.0),),

          CustomElevatedButton(
            labelText: "View Book",
            height: 43.0,
            radius: 28.0,
            onPressed: ()=> bookController.loadBook(context, book),
          ),
        ],
      ),
    );
  }
}
