import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_schedular_application/controller/theme_controller/theme_controller.dart';
import 'package:task_schedular_application/resources/routes/routes.dart';
import 'package:task_schedular_application/resources/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return Obx(
      () => GetMaterialApp(
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode:
            themeController.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
        title: 'Task Schedular Application',
        debugShowCheckedModeBanner: false,
        getPages: AppRoutes.appRoutes(),
      ),
    );
  }
}
