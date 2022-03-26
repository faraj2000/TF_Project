import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/settings_page_controller.dart';

class SettingsPageView extends GetView<SettingsPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting_Page'.tr),
        centerTitle: true,
      ),
      body: Center(
          child:Column(

              children: [
                TextButton(
                    child: Text('Dark'.tr),

                    onPressed: () {
                      Get.changeThemeMode(ThemeMode.dark);
                    }),
                TextButton(
                  child: Text('Light'.tr),

                  onPressed: (){
                    Get.changeThemeMode(ThemeMode.light);
                  },

                ),

                TextButton(
                  child: Text('English'.tr),

                  onPressed: (){
                    Get.updateLocale(Locale('en'));
                  },),

                TextButton(
                  child: Text('Arabic'.tr),

                  onPressed: (){
                    Get.updateLocale(Locale('ar'));
                  },),
              ]

          )

      ),

    );
  }
}
