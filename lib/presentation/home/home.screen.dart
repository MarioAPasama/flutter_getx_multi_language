import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        centerTitle: true,
      ),
      drawer: Drawer(
          child: Obx(
        () => ListView(children: [
          ListTile(
              leading: const Icon(Icons.flag),
              trailing: const Icon(Icons.arrow_drop_down),
              title: Text('language'.tr),
              onTap: () => controller.isRadio.toggle()),
          Visibility(
            visible: controller.isRadio.value,
            child: Column(
              children: [
                RadioListTile(
                  value: 1,
                  groupValue: controller.selectedRadioTile.value,
                  title: Text('languageEnglish'.tr),
                  onChanged: (val) {
                    controller.changeLanguage(1);
                  },
                ),
                RadioListTile(
                  value: 2,
                  groupValue: controller.selectedRadioTile.value,
                  title: const Text('Indonesia'),
                  onChanged: (val) {
                    controller.changeLanguage(2);
                  },
                ),
              ],
            ),
          ),
          ListTile(
              leading: const Icon(Icons.close),
              title: Text('back'.tr),
              onTap: () => Get.back()),
        ]),
      )),
      body: Center(
        child: Text(
          'hello'.tr,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
