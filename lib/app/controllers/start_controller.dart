import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StartController extends GetxController {
  late String locale;

  @override
  void onInit() {
    initdLocale();
    super.onInit();
  }

  void initdLocale() {
    if (GetStorage().read('initLocale') != null) {
      locale = Locale(GetStorage().read('initLocale')).toString();
    } else {
      locale = Get.deviceLocale.toString();
    }
  }
}
