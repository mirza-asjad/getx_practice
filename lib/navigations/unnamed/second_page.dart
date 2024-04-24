import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data = Get.arguments;
    String name = data['name'];
    int age = data['age'];
    bool isStudent = data['isStudent'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Practice'),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Get.back(result: 'We are back'); //result
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            Text(age.toString()),
            Text(isStudent.toString()),
            ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.keyboard_arrow_right_sharp))
          ],
        ),
      ),
    );
  }
}
