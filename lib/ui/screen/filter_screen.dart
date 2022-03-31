import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/location.dart';
import 'package:places/domain/place_type.dart';
import 'package:places/domain/sight.dart';
import 'package:places/service/utils.dart';
import 'package:places/ui/res/app_colors.dart';
import 'package:places/ui/res/app_icons.dart';
import 'package:places/ui/res/app_strings.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/widget/place_type_filter.dart';

import '../../mocks.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => FilterScreenState();
}

class FilterScreenState extends State<FilterScreen> {
  final _userLocation =
      const Location(lat: 56.8549102, lon: 53.2220899); //пока статика

  Set<String> get selectedCategories => {};
  late RangeValues _currentRangeValues = const RangeValues(100, 10000);
  int _sightCount = mocks.length;
  List<Sight> filter = [];

  void changeActiveCategory(PlaceType placeType) {
    setState(() {
      if (selectedCategories.contains(placeType.name)) {
        selectedCategories.remove(placeType.name);
      } else {
        selectedCategories.add(placeType.name);
      }
      _updateFilter();
    });
  }

  bool isActiveCategory(PlaceType placeType) =>
      selectedCategories.contains(placeType.name);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        titleTextStyle: Theme.of(context).textTheme.subtitle1,
        title: Container(
          width: double.infinity,
          height: 56,
          //alignment: Alignment.center,
          child: Stack(
            children: [
              Positioned(
                top: 18,
                left: 0,
                child: SizedBox(
                  width: 32,
                  height: 32,
                  child: TextButton(
                    onPressed: () {
                      if (kDebugMode) {
                        print('back');
                      }
                    },
                    child: SizedBox(
                      child: SvgPicture.asset(
                        AppIcons.back,
                        color: Theme.of(context).primaryColorDark,
                      ),
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
                child: SizedBox(
                  height: 32,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        _currentRangeValues = RangeValues(100, 10000);
                        _sightCount = mocks.length;
                      });
                    },
                    child: Text(
                      AppStrings.clear,
                      style: Theme.of(context)
                          .textTheme
                          .headline2
                          ?.copyWith(color: AppColors.lmWantVisitTime),
                    ),
                  ),
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
              height: 24,
            ),
            Text(
              'КАТЕГОРИИ',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const SizedBox(
              height: 24,
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              verticalDirection: VerticalDirection.down,
              children: placeTypes
                  .map((item) => placeTypeFilter(
                        placeType: item,
                      ))
                  .toList(),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    AppStrings.distance,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                const Expanded(
                  child: Text(
                    AppStrings.distanceHint,
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
                  // _updateFilter();
                  _sightCount = filter.length;
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
                child: Text(
                  '${AppStrings.show.toUpperCase()} (${_sightCount.toString()})',
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

  void _updateFilter() {
    filter = mocks
    // Фильтр по категории
    //     .where((sight) => selectedCategories.contains(sight.name))
    // Фильтр по расстоянию
        .where((sight) => Utils.isPointInRingArea(
      point: _userLocation,
      center: Location(lat: sight.lat, lon: sight.lon),
      minRadius: _currentRangeValues.start / 1000,
      maxRadius: _currentRangeValues.end / 1000,
    ))
      .toList();
  }

}
