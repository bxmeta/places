import 'package:flutter/material.dart';
import 'package:places/ui/res/app_strings.dart';


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
      title: const Text(
        AppStrings.title,
        textAlign: TextAlign.left,
      ),
      elevation: 0,
    );
  }


}
