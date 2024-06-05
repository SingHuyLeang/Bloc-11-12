import 'package:get/get.dart';
import 'package:state_management_11_12/theme/app_theme.dart';

class ThemeController extends GetxController {
  RxBool isDark = false.obs;
  void switchTheme(bool value) async {
    isDark.value = value;
    Get.changeTheme(isDark.value ? AppTheme.darkMode : AppTheme.lightMode);
    update();
  }
}
