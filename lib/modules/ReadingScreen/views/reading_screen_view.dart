import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/reading_screen_controller.dart';

class ReadingScreenView extends GetView<ReadingScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ReadingScreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ReadingScreenView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
