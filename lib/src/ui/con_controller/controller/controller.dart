// ignore_for_file: avoid_print

import 'package:get/get.dart';

class Controller extends GetxController {

  final name = 'Gilvan Costa'.obs;

  void setName(String value) => name.value = value;




  @override
  void onInit() {
    print('Controller onInit');
    super.onInit();
  }

  @override
  void onReady() {
    print('Controller onReady');
    super.onReady();
  }

  @override
  void onClose() {
    print('Controller onClose');
    super.onClose();
  }
}
