import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_schedular_application/controller/theme_controller/theme_controller.dart';
import 'package:task_schedular_application/resources/images/app_images.dart';
import 'package:task_schedular_application/views/home_screen/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      appBar: _appBar(),
      body: Center(
        child: const Text('Home Screen'),
      ),
    );
  }

  _appBar() {
    return AppBar(
      toolbarHeight: 70.0,
      leading: InkWell(
        splashColor: Colors.transparent,
        onTap: () {
          themeController.changeTheme();
        },
        child: Obx(() => themeController.isDarkMode.value
            ? const Icon(Icons.light_mode)
            : const Icon(Icons.dark_mode)),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: CircleAvatar(
            child: Image.asset(AppImages.profilePic),
          ),
        )
      ],
    );
  }
}
