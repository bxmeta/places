import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/widget/custom_appbar.dart';

import '../../mocks.dart';

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
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(24, 126, 146, 1),
              offset: Offset(0, -0.5),
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
    );
  }
}
