import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_darktheme_bakapp/src/controllers/app_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AppController controllerTheme = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Theme Dark Flutter',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: //MODO OSCURO
          Center(
        child: ElevatedButton(
          
          onPressed: () {
            // ignore: avoid_print
            print('Cambio el theme');
            controllerTheme.toggleTheme();
          },
          child: const Text('Cambiar tema'),
        ),
      ),
    );
  }
}
