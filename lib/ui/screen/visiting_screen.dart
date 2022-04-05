import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/res/app_icons.dart';
import 'package:places/ui/screen/sight_card_visited.dart';
import 'package:places/ui/screen/sight_card_want_visit.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/res/app_strings.dart';

class VisitingScreen extends StatefulWidget {
  const VisitingScreen({Key? key}) : super(key: key);

  @override
  State<VisitingScreen> createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // initialIndex: 0,
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          titleTextStyle: Theme.of(context).textTheme.subtitle1,
          title: Container(
            height: 56,
            alignment: Alignment.center,
            child: const Text(
              AppStrings.appFavoritTitle,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(56),
            child: Container(
              // margin: EdgeInsets.all(20),
              margin: const EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                // Creates border
                color: Theme.of(context).bottomAppBarColor,
              ),
              child: const TabBar(
                // indicatorPadding: EdgeInsets.only(left: 16, right: 16),
                tabs: [
                  Tab(
                    child: Text(
                      AppStrings.appWantVisit,
                    ),
                    height: 40,
                  ),
                  Tab(
                    child: Text(
                      AppStrings.appVisited,
                    ),
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
          elevation: 0,
        ),
        body: TabBarView(children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 32.0),
            child: Column(
              children: mocks
                  .map((item) => SightCardWantVisit(
                        sight: item,
                      ))
                  .toList(),
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 32.0),
            child: Column(
              children: mocks
                  .map((item) => SightCardVisited(
                        sight: item,
                      ))
                  .toList(),
            ),
          ),
        ]),
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
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation:0,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppIcons.appIconList,
                  width: 24.0,
                  height: 24.0,
                  // color: Theme.of(context).bottomAppBarColor,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppIcons.appIconMap,
                  width: 24.0,
                  height: 24.0,
                  // color: Theme.of(context).bottomAppBarColor,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppIcons.appIconHeartFull,
                  width: 24.0,
                  height: 24.0,
                  // color: Theme.of(context).bottomAppBarColor,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppIcons.appIconSettings,
                  width: 24.0,
                  height: 24.0,
                  // color: Theme.of(context).bottomAppBarColor,
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
