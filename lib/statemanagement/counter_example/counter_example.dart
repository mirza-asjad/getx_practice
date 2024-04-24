import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/statemanagement/counter_example/controller.dart';

class CounterExample extends StatelessWidget {
  const CounterExample({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.put<CounterController>(
        CounterController()); //this will call instance only single time throughtout app
    // var a = CounterController();   this will call instance everytime it called
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Counter Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(counterController.counter.value.toString())),
            ElevatedButton(
                onPressed: () {
                  counterController.incrementCounter();
                },
                child: const Text('Increase'))
          ],
        ),
      ),
    );
  }
}
