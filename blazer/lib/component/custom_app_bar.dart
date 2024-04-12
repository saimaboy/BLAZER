import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function onMenuPressed;

  CustomAppBar({required this.title, required this.onMenuPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: IconButton(
        icon: Image.asset('images/logo.png'), 
        onPressed: () {
        
        },
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            onMenuPressed();
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
