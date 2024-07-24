import 'package:flutter/material.dart';
import 'package:flutter_profiles/about.dart';
import 'package:flutter_profiles/botton_sheet.dart';
import 'package:get/get.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('About'),
            onTap: () {
              Get.to(const AboutPage());
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('My Botton Sheet'),
            onTap: () {
              Get.to(const MyBottonSheet()); // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
    ;
  }
}
