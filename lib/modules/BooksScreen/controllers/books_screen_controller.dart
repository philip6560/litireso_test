import 'dart:convert';

import 'package:epub_viewer/epub_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/data/models/books_models.dart';
import 'package:get/get.dart';

class BooksScreenController extends GetxController {

  List<BookModel> books = <BookModel>[
    BookModel(title: "Living in the Light_ A guide to personal transformation", bookLink: "assets/books/a.epub"),
    BookModel(title: "Give and Take_ WHY HELPING OTHERS DRIVES OUR SUCCESS", bookLink: "assets/books/b.epub"),
    BookModel(title: "Why Great Leaders Don't Take Yes for an Answer Managing for", bookLink: "assets/books/c.epub"),
    BookModel(title: "Living in the Light_ A guide to personal transformation", bookLink: "assets/books/a.epub"),
  ];


  initBookReader(BuildContext context){

    EpubViewer.setConfig(
        themeColor: Theme.of(context).primaryColor,
        identifier: "iosBook",
        scrollDirection: EpubScrollDirection.ALLDIRECTIONS,
        allowSharing: true,
        enableTts: false,
        nightMode: true,
    );
  }

  loadBook(BuildContext context, BookModel book)async{

    initBookReader(context);

    await EpubViewer.openAsset(
      book.bookLink,
    );
  }
  
}
