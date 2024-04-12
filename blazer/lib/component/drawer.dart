import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final Function onMenuItemSelected;

  CustomDrawer({required this.onMenuItemSelected});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Menu'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('MEN'),
            onTap: () {
              onMenuItemSelected('MEN');
            },
          ),
          ListTile(
            title: Text('WOMEN'),
            onTap: () {
              onMenuItemSelected('WOMEN');
            },
          ),
          ListTile(
            title: Text('Virtual Search'),
            onTap: () {
              onMenuItemSelected('Virtual Search');
            },
          ),
          ListTile(
            title: Text('Virtual Fitton'),
            onTap: () {
              onMenuItemSelected('Virtual Fitton');
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              onMenuItemSelected('Settings');
            },
          ),
          ListTile(
            title: Text('Logout'),
            onTap: () {
              onMenuItemSelected('Logout');
            },
          ),
        ],
      ),
    );
  }
}
