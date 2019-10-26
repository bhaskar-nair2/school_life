import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;
  final Widget leading;

  const CustomAppBar({
    @required this.title,
    this.actions,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      actions: actions == null ? [] : actions,
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'OpenSans',
          fontWeight: FontWeight.w600,
        ),
      ),
      leading: leading,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}