import 'package:get/get.dart';

class GetxBuildController extends GetxController {
  final _name = 'Ojuara Costa'.obs;
  int counter = 0;

  String get getName => _name.value;

  void setName(String value) {
    _name.value = value;
    update();
  }

  void increment() {
    counter++;
    update(['counter']);
  }
}
