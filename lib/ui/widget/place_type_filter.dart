import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/place_type.dart';
import 'package:places/ui/res/app_icons.dart';
import 'package:places/ui/screen/filter_screen.dart';

class placeTypeFilter extends StatelessWidget {
  final PlaceType placeType;

  const placeTypeFilter({
    Key? key,
    required this.placeType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final parentScreen = context.findAncestorStateOfType<FilterScreenState>()!;
    final isActiveCategory = parentScreen.isActiveCategory(placeType);

    return Container(
      margin: const EdgeInsets.only(left: 30, right: 10, bottom: 20,),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              parentScreen.changeActiveCategory(placeType);
            },
            borderRadius: const BorderRadius.all(Radius.circular(40)),
            child: Stack(
              children: [
                Ink(
                  padding: EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    color: Color.fromRGBO(76, 175, 80, 0.2),
                  ),
                  child: SvgPicture.asset(
                    placeType.icon,
                    width: 32,
                    height: 32,
                  ),
                ),
                if (isActiveCategory)
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: SvgPicture.asset(
                      AppIcons.choice,
                      width: 24,
                      height: 24,
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(placeType.name),
        ],
      ),
    );
  }
}
