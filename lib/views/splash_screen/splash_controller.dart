import 'package:get/get.dart';
import 'package:task_schedular_application/resources/routes/route_names.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed(RouteName.homeScreen);
    });
  }
}
