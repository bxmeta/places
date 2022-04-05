import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/app_icons.dart';
import 'package:places/ui/res/app_strings.dart';

class SightCardWantVisit extends StatelessWidget {
  final Sight sight;

  const SightCardWantVisit({Key? key, required this.sight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 96,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                      image: DecorationImage(
                        image: Image.network(
                          sight.url,
                          loadingBuilder: (
                            context,
                            child,
                            loadingProgress,
                          ) {
                            if (loadingProgress == null) {
                              return child;
                            }

                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            );
                          },
                        ).image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 16,
                  child: Text(
                    sight.type,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                Positioned(
                  right: 63,
                  top: 16,
                  child: InkWell(
                    onTap: () {
                      if (kDebugMode) {
                        print('calendar tap');
                      }
                    },
                    child: SvgPicture.asset(
                      AppIcons.calendar,
                      width: 24.0,
                      height: 24.0,
                    ),
                  ),
                ),
                Positioned(
                  right: 22,
                  top: 16,
                  child: InkWell(
                    onTap: () {
                      if (kDebugMode) {
                        print('delete tap');
                      }
                    },
                    child: SvgPicture.asset(
                      AppIcons.heart,
                      width: 24.0,
                      height: 24.0,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).bottomAppBarColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    sight.name,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    AppStrings.visitTime,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppStrings.visitedClose,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
