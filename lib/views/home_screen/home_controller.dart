import 'package:get/get.dart';
import 'package:task_schedular_application/services/Notification_Services/notification_services.dart';

class HomeController extends GetxController {
  var notify;
  @override
  void onInit() {
    super.onInit();
    notify = NotifyHelper();
    notify.requestIOSPermissions();
  }
}
