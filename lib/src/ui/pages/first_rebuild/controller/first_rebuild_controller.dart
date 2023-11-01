
import 'package:get/get.dart';

class FirstRebuildController extends GetxController {

  final _name = 'Ojuara Costa'.obs;

  String get name => _name.value;

  String setName(String value) => _name.value = value;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
  
}