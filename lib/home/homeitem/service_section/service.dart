import 'package:flutter/material.dart';

class ServiceSection extends StatefulWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  State<ServiceSection> createState() => _ServiceSectionState();
}

class _ServiceSectionState extends State<ServiceSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(" Service Page")
          ],
        ),
      ),
    );
  }
}
