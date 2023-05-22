import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obsecureText;
  final IconData prefixIcon;
  final TextInputType keboardType;

  CustomTextField(
      {required this.hintText,
      required this.obsecureText,
      required this.prefixIcon,
      required this.keboardType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keboardType,
      obscureText: obsecureText,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black),
        prefixIcon: Icon(prefixIcon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black)),
      ),
    );
  }
}
