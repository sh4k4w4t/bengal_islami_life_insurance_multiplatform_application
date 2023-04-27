import 'package:bengal_islami_life_insurance/UI/home/service.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [
    HomeSection(),
    ServiceSection(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.green[800],
      //   title: Text('Bengal Islami Life Insuranc Ltd.',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      //   actions: [
      //     IconButton(onPressed: (){},
      //         icon: Icon(Icons.person),color: Colors.white,),
      //     IconButton(onPressed: (){},
      //         icon: Icon(Icons.menu_open_rounded),color: Colors.white,),
      //   ],
      // ),
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text('Bengal Islami Life Insuranc Ltd.',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Welcome to \nBengal Islami Life Insurance Ltd.\nA digital platfrom for our Admin, Producer and Policy Holder in one apps.'),
            ),
            ListTile(
              leading: FlutterLogo(),
              title: Text('About Us'),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              leading: FlutterLogo(),
              title: Text('Logout'),
              onTap: () {
                // Handle item 3 tap
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: tabItems[_selectedIndex],
      ),
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.miscellaneous_services),
            title: Text('Services'),
          ),
        ],
      ),
    );
  }
}
