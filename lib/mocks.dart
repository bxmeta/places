import 'package:places/domain/place_type.dart';
import 'package:places/domain/sight.dart';
import 'package:places/service/app_settings.dart';
import 'package:places/ui/res/app_icons.dart';
import 'package:places/ui/res/app_strings.dart';

final List<Sight> mocks = [
  Sight(
    name: 'Музейно-выставочный комплекс Стрелкового Оружия имени М.Т. Калашникова',
    lat: 56.865131,
    lon: 53.211541,
    url:
    'https://avatars.mds.yandex.net/get-altay/2887807/2a00000170433ced5dab694dea565f8e3fbe/XXXL',
    details:
    'Экспозиции музея посвящены биографии Калашникова, истории оружейного производства, образцам исторического и современного оружия. В музее есть демонстрационный зал, разделенный на тиры огнестрельного, арбалетного и пневматического оружия.',
    type: 'Музей',
  ),
  Sight(
    name: 'Коза',
    lat: 56.867745,
    lon: 53.243404,
    url:
    'https://avatars.mds.yandex.net/get-altay/1879929/2a0000016decf74751dd034f0829f9b8ed30/L',
    details:
    'Скульптура "Коза". Появление скульптуры - дань историческому прошлому города. Более 100 лет назад этот парк был зоной, где отдыхали рабочие ижевского завода, но затем, по мере расширения городского строительства, поблизости были построены частные дома, жители которых стали в этом парке пасти коз. Он получил название "Козий парк"',
    type: 'Жанровая скульптура',
  ),
  Sight(
    name: 'Михаило-Архангельский кафедральный собор',
    lat: 56.84969,
    lon: 53.205464,
    url:
    'https://avatars.mds.yandex.net/get-altay/1554359/2a0000016a7326ae6f05673f8ddc6786704d/L',
    details:
    'История Свято-Михайловского Собора в г. Ижевске берет свое начало из XIX века. В 1893 году рабочие Ижевского завода начали перечислять 1% от ежемесячной заработной платы на строительство храма, а в 1897 году состоялась закладка Свято-Михайловского Собора.',
    type: 'Собор',
  ),
];

final List<PlaceType> placeTypes = [
  PlaceType(
    name: AppStrings.hotel,
    icon: AppIcons.hotel,
  ),
  PlaceType(
    name: AppStrings.restourant,
    icon: AppIcons.restourant,
  ),
  PlaceType(
    name: AppStrings.particular,
    icon: AppIcons.particular,
  ),

  PlaceType(
    name: AppStrings.park,
    icon: AppIcons.park,
  ),
  PlaceType(
    name: AppStrings.museum,
    icon: AppIcons.museum,
  ),
  PlaceType(
    name: AppStrings.cafe,
    icon: AppIcons.cafe,
  ),
];
