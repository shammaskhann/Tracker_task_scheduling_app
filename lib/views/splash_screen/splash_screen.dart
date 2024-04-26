import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:task_schedular_application/resources/images/app_images.dart';
import 'package:task_schedular_application/views/splash_screen/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController splashController = Get.put(SplashController());
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          AppImages.appLogoSvg,
          height: Get.height * 0.2,
          width: Get.width * 0.2,
        ),
      ),
      backgroundColor: Colors.black54,
    );
  }
}
