import 'package:get/get.dart';

class CounterX extends GetxController{
  RxInt counter = 0.obs;

  void incremment() async {
    counter ++;
    update();
  }
  void decremment() async {
    counter --;
    update();
  }
}