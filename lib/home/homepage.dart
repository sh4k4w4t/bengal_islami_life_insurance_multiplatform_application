import 'package:bengal_islami_life_insurance/home/homeitem/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int _selectedIndex= 0;
static const List<Widget> _widgetOptions = <Widget>[
  Home(),
  Home(),
  Home(),
];

void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bengal Islami Life Insurance Ltd",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        // centerTitle: true,
        backgroundColor: Colors.green[900],
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("You have been Logout."),
                  action: SnackBarAction(
                      label: "Login Again",
                      onPressed: () {
                        print("Login again in here");
                      }),
                ));
              },
              icon: Icon(
                Icons.login,
                color: Colors.white,
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.miscellaneous_services_rounded),label: "Services"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[900],
        onTap: _onItemTapped,
      ),
      body: Column(
        children: [
          // _widgetOptions.elementAt(_selectedIndex)
          Text("We are one")
        ],
      ),

    );
  }
}


