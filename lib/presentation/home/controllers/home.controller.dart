import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:multi_bahasa/app/controllers/start_controller.dart';

class HomeController extends GetxController {
  final StartController startController = Get.put(StartController());

  RxBool isRadio = false.obs;
  RxInt selectedRadioTile = 0.obs;

  @override
  void onInit() {
    selectedRadioTile.value = initialSelectedRadioTile(startController.locale);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changeLanguage(val) {
    selectedRadioTile.value = val;
    late Locale locale;
    switch (val) {
      case 1:
        locale = const Locale('en', 'US');
        GetStorage().write('initLocale', 'en_US');
        break;
      case 2:
        locale = const Locale('id', 'ID');
        GetStorage().write('initLocale', 'id_ID');
        break;
      default:
    }
    Get.updateLocale(locale);
  }

  int initialSelectedRadioTile(String val) {
    switch (val) {
      case 'en_US':
        return 1;
      case 'id_ID':
        return 2;
      default:
        return 0;
    }
  }
}
