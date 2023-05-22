import 'package:bengal_islami_life_insurance/constants/image_assets.dart';
import 'package:bengal_islami_life_insurance/ui/login_register/login.dart';
import 'package:bengal_islami_life_insurance/ui/login_register/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../dashboard/dashboard.dart';

class IMSLogin extends StatefulWidget {
  const IMSLogin({Key? key}) : super(key: key);

  @override
  State<IMSLogin> createState() => _IMSLoginState();
}

class _IMSLoginState extends State<IMSLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImageAssets.loginScreen), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30, top: 75),
              child: Text(
                "Welcome To\nBengal Takaful Life",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.3),
                margin: EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: "Enter your IMS ID",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: "Enter Your Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sign in",
                          style: TextStyle(
                              fontSize: 27, fontWeight: FontWeight.w700),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {
                              Get.to(Dashboard());
                            },
                            icon: Icon(Icons.arrow_forward),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              Get.to(RegisterPage());
                            },
                            child: Text("Sign Up",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color(0xff4c505b),
                                    fontSize: 18)),
                            style: ButtonStyle()),
                        TextButton(
                          onPressed: () {
                            Get.to(LoginPage());
                          },
                          child: Text("Login With Code",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff4c505b),
                                  fontSize: 18)),
                          style: ButtonStyle(),
                        )
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text("Forget Password",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff4c505b),
                                  fontSize: 18)),
                        ),
                        style: ButtonStyle()),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
