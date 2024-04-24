// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_practice/statemanagement/custom_class_example/controller.dart';
import 'package:getx_practice/statemanagement/custom_class_example/model_class.dart';

class CustomClassExample extends StatelessWidget {
  const CustomClassExample({super.key});

  @override
  Widget build(BuildContext context) {
    VehicleController vehicleController =
        Get.put<VehicleController>(VehicleController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Custom Class Example'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  vehicleController.addVehicle('Mustang', 001, true);
                  print('Added');
                },
                child: const Text('addData')),
            Flexible(
              child: Obx(
                () => Container(
                  child: ListView.builder(
                    itemCount: vehicleController.vehicleCounterList.length,
                    itemBuilder: (context, index) {
                      Vehicle vehicle =
                          vehicleController.vehicleCounterList[index];
                      return ListTile(
                        title: Text('Car Name: ${vehicle.name.value}'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Car ID: ${vehicle.carID.value}'),
                            Text('Available: ${vehicle.isCar.value}'),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  vehicleController.showVehicle();
                },
                child: const Text('showData')),
            ElevatedButton(
                onPressed: () {
                  vehicleController.clearVehicle();
                  print('Cleared');
                },
                child: const Text('clearData')),
          ],
        ),
      ),
    );
  }
}
