import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/res/app_colors.dart';
import 'package:places/ui/res/app_icons.dart';

class SightDetails extends StatelessWidget {
  const SightDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            SizedBox(
              height: 360,
              width: double.infinity,
              child: Image.network(
                'https://avatars.mds.yandex.net/get-altay/2887807/2a00000170433ced5dab694dea565f8e3fbe/XXXL',
                fit: BoxFit.cover,
                loadingBuilder: (
                  context,
                  child,
                  loadingProgress,
                ) {
                  if (loadingProgress == null) {
                    return child;
                  }

                  return CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  );
                },
              ),
            ),
            Positioned(
              child: SizedBox(
                width: 32,
                height: 32,
                child: ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('back');
                    }
                  },
                  child: SvgPicture.asset(
                    AppIcons.back,
                    width: 5.0,
                    height: 10.0,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ),
              top: 36,
              left: 15,
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(
              top: 24,
              right: 16,
              left: 16,
              bottom: 24,
            ),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Пряности и радости', //@TODO: заменить
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 2),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 16,
                        ),
                        child: Text(
                          'ресторан', //@TODO: заменить
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ),
                      const Text(
                        'закрыто до 9:00',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color.fromRGBO(124, 126, 146, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 24),
                  child: const Text(
                    'Пряный вкус радостной жизни вместе с шеф-поваром Изо Дзандзава, благодаря которой у гостей ресторана есть возможность выбирать из двух направлений: европейского и восточного',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(59, 62, 91, 1),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      if (kDebugMode) {
                        print('get directories');
                      }
                    },
                    icon: SvgPicture.asset(
                      AppIcons.go,
                      width: 24.0,
                      height: 24.0,
                      color: Theme.of(context).primaryColor,
                    ),
                    label: Text(
                      'ПОСТРОИТЬ МАРШРУТ',
                      style: Theme.of(context).textTheme.headline1?.merge(
                            TextStyle(color: Theme.of(context).primaryColor),
                          ),
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
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton.icon(
                        onPressed: () {
                          if (kDebugMode) {
                            print('plan');
                          }
                        },
                        icon: SvgPicture.asset(
                          AppIcons.calendar,
                          width: 22.0,
                          height: 19.0,
                          color: Theme.of(context).shadowColor,
                        ),
                        label: Text(
                          'Запланировать',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton.icon(
                        onPressed: () {
                          if (kDebugMode) {
                            print('plan');
                          }
                        },
                        icon: SvgPicture.asset(
                          AppIcons.heartAdd,
                          width: 22.0,
                          height: 19.0,
                          color: Theme.of(context).shadowColor,
                        ),
                        label: Text(
                          'В избранное',
                          style:
                              Theme.of(context).textTheme.headline5?.copyWith(
                                    color: Theme.of(context).primaryColorDark,
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
