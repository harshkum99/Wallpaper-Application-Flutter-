import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:wallpaper_app_ii/modules/homepage/homepage_view.dart';
import 'package:wallpaper_app_ii/resources/app_routes.dart';

//how to perform binding in flutter?

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallpaper Hub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: AppRoutes.home,
      getPages: AppRoutes.getPages,
      //home: HomePage(),
    );
  }
}
