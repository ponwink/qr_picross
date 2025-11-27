import 'package:flutter/material.dart';

class QrPicrossAppBar extends StatelessWidget implements PreferredSizeWidget {
  const QrPicrossAppBar({super.key});
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: const Text('QRピクロス'),
      );
  }
  
  @override
  Size get preferredSize => Size(double.infinity, 56.0);
}