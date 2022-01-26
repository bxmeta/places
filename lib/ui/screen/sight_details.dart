import 'package:flutter/material.dart';

class SightDetails extends StatelessWidget {
  const SightDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 360,
            width: double.infinity,
            color: Colors.white,
            child: Image.network(
              'https://avatars.mds.yandex.net/get-altay/2887807/2a00000170433ced5dab694dea565f8e3fbe/XXXL',
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress,) {
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 24,
              right: 16,
              left: 16,
              bottom: 24,
            ),
            child: Column(
              children: [
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Пряности и радости',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color.fromRGBO(37, 40, 73, 1),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 2),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                          right: 16,
                        ),
                        child: Text(
                          'ресторан',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color.fromRGBO(37, 40, 73, 1),
                          ),
                        ),
                      ),
                      Text(
                        'закрыто до 9:00',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color.fromRGBO(124,126,146, 1),
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
                        color: Color.fromRGBO(59,62,91, 1),
                      ),
                  ),
                ),
                Container (
                  margin: const EdgeInsets.only(top: 39),
                  height: 48,
                  decoration:
                  const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color:Color.fromRGBO(76,175,80, 1),
                  ),

                ),
                Container(
                  margin: const EdgeInsets.only(top: 32),
                  child: Row(
                      children: const [
                        Expanded(
                          child: Text('Запланироать', textAlign: TextAlign.center,),
                        ),
                        Expanded(
                          child: Text('В избранное', textAlign: TextAlign.center),
                        ),
                      ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
