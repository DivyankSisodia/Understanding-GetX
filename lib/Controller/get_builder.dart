import 'package:get/get.dart';

class Countercontroller extends GetxController {
  int counter = 0;

  counterincrement() {
    counter++;
    update();
  }
}
