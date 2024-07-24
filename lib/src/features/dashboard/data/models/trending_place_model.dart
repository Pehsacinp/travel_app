import 'package:travel_app/src/core/functions/app_images.dart';
import 'package:travel_app/src/core/functions/app_keys.dart';

class TrendingPlace {
  final String imagePath;
  final String imgFavori;
  final String title;
  final String subtitle;
  TrendingPlace({required this.imagePath, required this.imgFavori, required this.title, required this.subtitle});
}

Future<List<TrendingPlace>> verileriYukle() async {
  await Future.delayed(Duration(seconds: 2));
  final verileriGetir = <TrendingPlace>[];

  final v1 = TrendingPlace(
    imagePath: AppImages.firstCardImg,
    imgFavori: AppImages.favoriIcon,
    title: Constants.keys.trendingModelTitle,
    subtitle: Constants.keys.trendingModelSubTtile,
  );

  final v2 = TrendingPlace(
    imagePath: AppImages.twoCardImg,
    imgFavori: AppImages.favoriIcon,
    title: 'Nigara Hills',
    subtitle: 'Lake Amani',
  );

  final v3 = TrendingPlace(
    imagePath: AppImages.threeCardImg,
    imgFavori: AppImages.favoriIcon,
    title: 'Adventure',
    subtitle: 'New Ricochester',
  );

  final v4 = TrendingPlace(
    imagePath: AppImages.fourCardImg,
    imgFavori: AppImages.favoriIcon,
    title: 'Adventure',
    subtitle: 'New Ricochester',
  );

  final v5 = TrendingPlace(
    imagePath: AppImages.fiveCardImg,
    imgFavori: AppImages.favoriIcon,
    title: 'Adventure',
    subtitle: 'New Ricochester',
  );

  verileriGetir.add(v1);
  verileriGetir.add(v2);
  verileriGetir.add(v3);
  verileriGetir.add(v4);
  verileriGetir.add(v5);

  return verileriGetir;
}
