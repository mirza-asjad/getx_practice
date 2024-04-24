import 'package:get/get.dart';

class Vehicle {
  RxString name = ''.obs;     //to get this value we need counter.value.name or controller.value.name instead of counter.name
  RxInt carID = 0.obs;
  RxBool isCar = false.obs;

  Vehicle({required this.name, required this.carID, required this.isCar});
}
