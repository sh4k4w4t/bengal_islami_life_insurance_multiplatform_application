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
      body: LisTileExample(),
    );
  }
}

class LisTileExample extends StatelessWidget {
  const LisTileExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children:  <Widget>[
          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('Follow Us'),
              onTap: () {
                //add tap operations
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('Feedback'),
              onTap: () {
                //add tap operations
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('FAQ'),
              onTap: () {
                //add tap operations
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('Idra Policy Dashboard'),
              onTap: () {
                //add tap operations
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('Why life insurance?'),
              onTap: () {
                //add tap operations
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('Rate & Update Apps'),
              onTap: () {
                //add tap operations
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('Privacy & Policy'),
              onTap: () {
                //add tap operations
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('Logout'),
              onTap: () {
                //add tap operations
              },
            ),
          ),
        ],
      ),
    );
  }
}
