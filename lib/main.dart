import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:multi_bahasa/domain/core/interfaces/translations.dart';

import 'infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';

void main() async {
  await GetStorage.init();
  var initialRoute = await Routes.initialRoute;
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;
  Main(this.initialRoute);

  @override
  Widget build(BuildContext context) {
    Locale? initLocale;

    if (GetStorage().read('initLocale') != null) {
      initLocale = Locale(GetStorage().read('initLocale'));
    }

    return GetMaterialApp(
      translations: MainTranslations(),
      locale: initLocale ?? Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      initialRoute: initialRoute,
      getPages: Nav.routes,
    );
  }
}
