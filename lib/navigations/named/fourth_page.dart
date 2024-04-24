import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data = Get.parameters;
    String name = data['name'];
    String age = data['age'];
    String isStudent = data['isStudent'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fourth Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            Text(age.toString()),
            Text(isStudent.toString()),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/fifth');
                },
                child: const Icon(Icons.keyboard_arrow_right_sharp))
          ],
        ),
      ),
    );
  }
}
