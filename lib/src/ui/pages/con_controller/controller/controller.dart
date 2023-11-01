// ignore_for_file: avoid_print

import 'package:get/get.dart';

class Controller extends GetxController {

  final _name = 'Gilvan Costa'.obs;

  String get name => _name.value;

  void setName(String value) => _name.value = value;




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
