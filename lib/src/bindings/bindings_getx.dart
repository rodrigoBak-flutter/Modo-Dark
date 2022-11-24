
import 'package:get/get.dart';


import '../data/data.dart';
import 'package:app_darktheme_bakapp/src/controllers/app_controller.dart';


class AppBindings {
  static void registerEventsAndDependencies() {}

  static void initServices() {
    Get.lazyPut<ISettings>(() => Settings());
    Get.put(AppController());
  }
}