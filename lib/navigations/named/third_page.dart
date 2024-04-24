import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
     Map<String, String> data = {
      'name': 'John Doe',
      'age': '30',
      'isStudent': 'true',
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/fourth',parameters: data);
                },
                child: const Icon(Icons.keyboard_arrow_right_sharp))
          ],
        ),
      ),
    );
  }
}
