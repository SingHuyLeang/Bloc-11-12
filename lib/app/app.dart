import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_11_12/getx/theme_controller.dart';

class AppScreen extends StatelessWidget {
  AppScreen({super.key});
  final ThemeController controller = Get.put(ThemeController());
  final visible = true.obs;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text('App Bar'),
        ),
        body: Visibility(
          visible: visible.value,
          child: Center(
            child: CupertinoSwitch(
              value: controller.isDark.value,
              onChanged: (value) async {
                controller.switchTheme(value);
              },
            ),
          ),
        ),
      ),
    );
  }
}
