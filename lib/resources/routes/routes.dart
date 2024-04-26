import 'package:get/get.dart';
import 'package:task_schedular_application/resources/routes/route_names.dart';
import 'package:task_schedular_application/views/home_screen/home_screen.dart';
import 'package:task_schedular_application/views/splash_screen/splash_screen.dart';

class AppRoutes {
  static List<GetPage> appRoutes() {
    return [
      GetPage(
        name: RouteName.splashScreen,
        page: () => const SplashScreen(),
        transition: Transition.zoom,
        transitionDuration: const Duration(milliseconds: 1000),
      ),
      GetPage(
        name: RouteName.homeScreen,
        page: () => HomeScreen(),
      ),
    ];
  }
}
