import 'package:flutter/material.dart';
import 'package:places/ui/app_strings.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  @override
  Size get preferredSize => Size.fromHeight(height);

  const CustomAppBar({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: height,
      title: const SizedBox(
        width: double.infinity,
        child: Text(
          AppStrings.appTitle,
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


}
