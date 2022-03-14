import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/location.dart';
import 'package:places/service/utils.dart';
import 'package:places/ui/res/app_colors.dart';
import 'package:places/ui/res/app_icons.dart';
import 'package:places/ui/res/app_strings.dart';

import '../../mocks.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final _userLocation = const Location(lat: 56.8549102, lon: 53.2220899); //пока статика
  RangeValues _currentRangeValues = const RangeValues(100, 10000);
  int _sightCount = mocks.length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        titleTextStyle: Theme.of(context).textTheme.subtitle1,
        title: Container(
          width: double.infinity,
          height: 56,
          alignment: Alignment.center,
          child: Stack(
            children: [
              Positioned(
                top: 12,
                left: 16,
                child: SizedBox(
                  width: 32,
                  height: 32,
                  child: TextButton(
                    onPressed: () {
                      if (kDebugMode) {
                        print('back');
                      }
                    },
                    child: SvgPicture.asset(
                      AppIcons.appIconBack,
                      width: 32,
                      height: 32,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 18,
                right: 16,
                child: Text(
                  'Очистить',
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      ?.copyWith(color: AppColors.lmWantVisitTime),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 344,
            ),
            Row(
              children: const [
                Expanded(
                  child: Text(AppStrings.appDistance),
                ),
                Expanded(
                  child: Text(
                    AppStrings.appDistanceHint,
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            RangeSlider(
              values: _currentRangeValues,
              min: 100,
              max: 10000,
              divisions: 20,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (values) {
                setState(() {
                  _currentRangeValues = values;
                  _sightCount = mocks
                      .where((item) => Utils.isPointInRingArea(
                            point: _userLocation,
                            center: Location(lat: item.lat, lon: item.lon),
                            minRadius: _currentRangeValues.start/1000,
                            maxRadius: _currentRangeValues.end/1000,
                          ))
                      .toList()
                      .length;
                });
              },
            ),
            const SizedBox(
              height: 160,
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  if (kDebugMode) {
                    print('get directions');
                  }
                },
                child: Text('${AppStrings.appShow.toUpperCase()} (${_sightCount.toString()})',
                  style: Theme.of(context).textTheme.button,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    AppColors.lmWantVisitTime,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    const EdgeInsets.only(
                      top: 15,
                      bottom: 15,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
