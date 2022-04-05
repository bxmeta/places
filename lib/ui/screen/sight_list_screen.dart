import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/res/app_icons.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/widget/custom_appbar.dart';


class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppBar(
        height: 140,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: mocks
              .map((item) => SightCard(
                    sight: item,
                  ))
              .toList(),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor,
              offset: const Offset(0, -0.5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.appIconList,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.appIconMap,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.appIconHeartFull,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppIcons.appIconSettings,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
