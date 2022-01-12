import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const CustomAppBar({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: height,
      title: Container(
        width: double.infinity,
        child: const Text(
          'Список \nинтересных мест',
          textAlign: TextAlign.left,
          maxLines: 2,
          style: TextStyle(
            color: Color.fromRGBO(37, 40, 73, 1),
            fontSize: 32,
            height: 1.1,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,

    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}