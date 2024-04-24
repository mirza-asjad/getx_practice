// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:getx_practice/statemanagement/custom_class_example/model_class.dart';


//here GetxController contains some lifecycle methods i.e. init and dispose etc
//so that we can write again in UI part
class VehicleController extends GetxController {
  // var vehicleCounter = Rx<Vehicle?>(null);  to add only data to Custom Class
  var vehicleCounterList = RxList<Vehicle>([]); // to add List of Custom Class

  void addVehicle(String name, int carID, bool isCar) {
    Vehicle vehicle = Vehicle(
      name: name.obs,
      carID: carID.obs,
      isCar: isCar.obs,
    );
    vehicleCounterList.add(vehicle);
  }

  void showVehicle() {
    for (int i = 0; i < vehicleCounterList.length; i++) {
      Vehicle vehicle = vehicleCounterList[i];
      print('Vehicle ${i + 1}:');
      print('Name: ${vehicle.name.value}');
      print('Car ID: ${vehicle.carID.value}');
      print('Is Car: ${vehicle.isCar.value}');
      print('-----------');
    }
  }

  void clearVehicle() {
    vehicleCounterList.clear();
  }
}
