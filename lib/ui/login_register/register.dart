import 'package:bengal_islami_life_insurance/components/registerPage/custom_textfield.dart';
import 'package:bengal_islami_life_insurance/constants/image_assets.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImageAssets.registerScreen),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  'Create Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 37),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomTextField(
                        hintText: "Email Address",
                        obsecureText: false,
                        prefixIcon: Icons.email,
                        keboardType: TextInputType.text),
                    SizedBox(height: 10),
                    CustomTextField(
                        hintText: "Mobile Number",
                        obsecureText: false,
                        prefixIcon: Icons.phone,
                        keboardType: TextInputType.phone),
                    SizedBox(height: 10),
                    CustomTextField(
                        hintText: "Identity Number",
                        obsecureText: false,
                        prefixIcon: Icons.code,
                        keboardType: TextInputType.text),
                    SizedBox(height: 10),
                    CustomTextField(
                        hintText: "Password",
                        obsecureText: true,
                        prefixIcon: Icons.password,
                        keboardType: TextInputType.phone),
                    SizedBox(height: 10),
                    CustomTextField(
                        hintText: "Confirm Password",
                        obsecureText: true,
                        prefixIcon: Icons.password,
                        keboardType: TextInputType.phone),
                    SizedBox(height: 10),
                    Container(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white))))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
