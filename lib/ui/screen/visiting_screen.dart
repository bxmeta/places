import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/screen/sight_card_visited.dart';
import 'package:places/ui/screen/sight_card_want_visit.dart';

import '../../mocks.dart';
import '../app_strings.dart';

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
          title: Container(
            height: 56,
            alignment: Alignment.center,
            child: const Text(
              AppStrings.appFavoritTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(37, 40, 73, 1),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(56),
            child: Container(
              // margin: EdgeInsets.all(20),
              margin: const EdgeInsets.only(left: 15, right: 15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                // Creates border
                color: Color.fromRGBO(245, 245, 245, 1),
              ),
              child: const TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Color.fromRGBO(124, 126, 146, 1),
                // indicatorPadding: EdgeInsets.only(left: 16, right: 16),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  // Creates border
                  color: Color.fromRGBO(59, 62, 91, 1),
                ),
                tabs: [
                  Tab(
                    child: Text(
                      AppStrings.appWantVisit,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    height: 40,
                  ),
                  Tab(
                    child: Text(
                      AppStrings.appVisited,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body:
        TabBarView(children: [
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
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(24, 126, 146, 1), offset: Offset(0, -0.5),
              ),
            ],
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset('res/images/icons/List.svg',
                    width: 24.0, height: 24.0,),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('res/images/icons/Map.svg',
                    width: 24.0, height: 24.0,),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('res/images/icons/Heart Full.svg',
                    width: 24.0, height: 24.0,),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('res/images/icons/Settings.svg',
                    width: 24.0, height: 24.0,),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
