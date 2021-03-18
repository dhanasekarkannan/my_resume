import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  final String title;
  final Function onTap;
  final IconData icon;

  const MenuWidget(
      {required this.title, required this.icon, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(icon),
        ),
        title: Text(title, style: TextStyle(color: const Color(0xFF262AAA))),
      ),
    );
  }
}
