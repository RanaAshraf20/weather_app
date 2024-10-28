import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  const AppBarComponent({
    super.key,
    this.title = '',
    this.onPressed,
    this.color = Colors.blue,
    this.icon,
    this.suffixIconColor = Colors.white,
    this.textColor = Colors.white,
    this.prefixIconColor = Colors.white,
  });
  final String title;
  final Color color;
  final VoidCallback? onPressed;
  final IconData? icon;
  final Color suffixIconColor;
  final Color textColor;
  final Color prefixIconColor;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
      iconTheme: IconThemeData(color: prefixIconColor),
      backgroundColor: Colors.blue,
      actions: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(icon),
          color: suffixIconColor,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
