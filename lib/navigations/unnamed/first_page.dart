// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/navigations/unnamed/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data = {
      'name': 'John Doe',
      'age': 30,
      'isStudent': true,
    };   //passing this as arguement
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Practice'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  var a =
                      await Get.to(() => const SecondPage(), arguments: data);
                  print(a);
                },
                child: const Icon(Icons.keyboard_arrow_right_sharp))
          ],
        ),
      ),
    );
  }
}
