import 'package:get/get.dart';
import 'package:youtube_clone_project/controller/app_controller.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
  }
}
