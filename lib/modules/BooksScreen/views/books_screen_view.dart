import 'package:flutter/material.dart';
import 'package:flutter_app/utils/constants.dart';
import 'package:flutter_app/utils/responsive.dart';
import 'package:flutter_app/widgets/container.dart';
import 'package:flutter_app/widgets/dialog_box.dart';
import 'package:flutter_app/widgets/text.dart';

import 'package:get/get.dart';

import '../controllers/books_screen_controller.dart';

class BooksScreenView extends GetView<BooksScreenController> {


  @override
  Widget build(BuildContext context) {

    height(value)=> scale_height(value, context);

    return Scaffold(
      backgroundColor: CustomColor.scaffold,
      appBar: AppBar(
        title: CustomText(text: 'Books Screen', fontSize: 22.0,),
        elevation: 0.0,
        actions: [

          IconButton(
            onPressed: ()=> logOutDialog(context),
            icon: Icon(Icons.exit_to_app,),
          ),
        ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.only(top: height(10.0)),
        itemCount: controller.books.length,
        itemBuilder: (context, index){
          final book = controller.books[index];
          return BookContainer(
            key: ValueKey(index),
            book: book,
          );
        },
      ),
    );
  }
}
