import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(50))),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                    title: Text(
                      "Hello User!",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Colors.white),
                    ),
                    subtitle: Text(
                      "Welcome to Bengal",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.white54),
                    ),
                    trailing: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/icons/profile.png"),
                    )),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(200))),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: itemDashboard(
                        "Earning", CupertinoIcons.hourglass, Colors.green),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: itemDashboard("Business Report",
                        CupertinoIcons.hourglass, Colors.green),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: itemDashboard(
                        "Top Producer", CupertinoIcons.hourglass, Colors.green),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: itemDashboard(
                        "Policy List", CupertinoIcons.hourglass, Colors.green),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: itemDashboard("Policy Statement",
                        CupertinoIcons.hourglass, Colors.green),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: itemDashboard("Proposal List",
                        CupertinoIcons.hourglass, Colors.green),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: itemDashboard("Proposal status & payment",
                        CupertinoIcons.hourglass, Colors.green),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: itemDashboard(
                        "Chain Setup", CupertinoIcons.hourglass, Colors.green),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: itemDashboard(
                        "All Plans", CupertinoIcons.hourglass, Colors.green),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: itemDashboard(
                        "Pay Premium", CupertinoIcons.hourglass, Colors.green),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: itemDashboard("Premium Calculator",
                        CupertinoIcons.hourglass, Colors.green),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: itemDashboard("Branch Office",
                        CupertinoIcons.hourglass, Colors.green),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: itemDashboard("Network Hospital",
                        CupertinoIcons.hourglass, Colors.green),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: itemDashboard(
                        "Contact Us", CupertinoIcons.hourglass, Colors.green),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: itemDashboard(
                        "All Setting", CupertinoIcons.hourglass, Colors.green),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  itemDashboard(String title, IconData iconData, Color backgroundColor) =>
      Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 5),
                  color: Theme.of(context).primaryColor.withOpacity(.2),
                  spreadRadius: 2,
                  blurRadius: 5)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: backgroundColor, shape: BoxShape.circle),
                child: Icon(iconData, color: Colors.white)),
            const SizedBox(height: 8),
            Text(
              title.toUpperCase(),
              style: Theme.of(context).textTheme.titleSmall,
            )
          ],
        ),
      );
}
