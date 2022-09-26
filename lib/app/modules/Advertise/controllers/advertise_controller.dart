import 'package:get/get.dart';

class AdvertiseController extends GetxController {
  //TODO: Implement AdvertiseController
var select = false;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }
  var selectedCatIndex;
  onSelectCat(int index) {
    selectedCatIndex = index;
    update();
  } var selectedCatIndex3;
  onSelectCat3(int index) {
    selectedCatIndex = index;
    update();
  }

  var selectedCatIndex2;
  onSelectCat2(int index) {
    selectedCatIndex2 = index;
    update();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
