import 'package:bengal_islami_life_insurance/components/registerPage/custom_textfield.dart';
import 'package:bengal_islami_life_insurance/constants/image_assets.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  List<DropdownMenuItem<String>> get dropdownDesignationItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Producer"), value: "Producer"),
      DropdownMenuItem(child: Text("Policy Holder"), value: "Policy Holder"),
      DropdownMenuItem(child: Text("Admin"), value: "Admin")
    ];
    return menuItems;
  }

  String? selectedValue;

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
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  'Create Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 37),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    DropdownButtonFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        dropdownColor: Colors.white,
                        value: selectedValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                        items: dropdownDesignationItems),
                    SizedBox(height: 10),
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
