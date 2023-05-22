import 'package:bengal_islami_life_insurance/constants/image_assets.dart';
import 'package:bengal_islami_life_insurance/ui/login_register/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Get.to(LoginPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImageAssets.splashScreen), fit: BoxFit.cover)),
    ));
  }
}
