
import 'package:get/get.dart';

class GetxWidgetController extends GetxController {
  
    final _name = 'Gilvan Costa'.obs;
  
    String get name => _name.value;
  
    void setName(String value) => _name.value = value;
  
}