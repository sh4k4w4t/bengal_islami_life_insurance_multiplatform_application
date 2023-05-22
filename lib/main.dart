import 'package:bengal_islami_life_insurance/ui/splash.dart';
import 'package:bengal_islami_life_insurance/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.red,),
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: primCol, fontFamily: "Montserrat"),
        useMaterial3: true,
      ),
      home: Splash(),
    );
  }
}
