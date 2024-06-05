import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_11_12/app/app.dart';
import 'package:state_management_11_12/getx/theme_controller.dart';
import 'package:state_management_11_12/theme/app_theme.dart';

class App extends StatelessWidget {
  App({super.key});
  final ThemeController controller = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: controller.isDark.value ? AppTheme.darkMode : AppTheme.lightMode,
        home: AppScreen(),
      ),
    );
  }
}
