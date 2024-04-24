import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/statemanagement/custom_class_example/example.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.leftToRight,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CustomClassExample(),
      // initialRoute: '/',
      // getPages: [
      //   GetPage(
      //     name: '/',
      //     page: () => const ThirdPage(),
      //   ),
      //   GetPage(
      //     name: '/fourth',
      //     page: () => const FourthPage(),
      //   ),
      //   GetPage(
      //     name: '/fifth',
      //     page: () => const FifthPage(),
      //   ),
      // ],
    );
  }
}
