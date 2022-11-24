import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'src/controllers/app_controller.dart';
import 'package:app_darktheme_bakapp/src/data/data.dart';
import 'package:app_darktheme_bakapp/src/screens/home_screen.dart';
import 'package:app_darktheme_bakapp/src/bindings/bindings_getx.dart';
import 'package:app_darktheme_bakapp/src/theme/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  // Abrir boxes, donde recuerda que Theme se esta usando
  await Hive.openBox<dynamic>(AppHiveBoxes.settingsBoxName);
  AppBindings.initServices();
  AppBindings.registerEventsAndDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      init: AppController(),
      builder: (controller) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: controller.themeMode,
          theme: AppTheme.light(),
          darkTheme: AppTheme.dark(),
          home: const HomeScreen(),
        );
      },
    );
  }
}
