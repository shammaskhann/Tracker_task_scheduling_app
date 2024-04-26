import 'package:get/get.dart';
import 'package:task_schedular_application/services/Theme_Services/theme_services.dart';

class ThemeController extends GetxController {
  RxBool isDarkMode = false.obs;
  ThemeServices _themeServices = ThemeServices();
  @override
  void onInit() {
    isDarkMode.value = _themeServices.getThemeMode();
    super.onInit();
  }

  void changeTheme() {
    _themeServices.saveThemeMode(!isDarkMode.value);
    isDarkMode.value = !isDarkMode.value;
  }
}
