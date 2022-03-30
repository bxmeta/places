import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/place_type.dart';
import 'package:places/ui/res/app_icons.dart';

class placeTypeFilter extends StatelessWidget {
  final PlaceType placeType;
  const placeTypeFilter({Key? key, required this.placeType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            borderRadius: const BorderRadius.all(Radius.circular(40)),
            child: Ink(
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
          ),
          const SizedBox(
            height: 12,
          ),
          Text(placeType.name)
        ],
      ),
    );
  }
}
