import 'package:travel_app/src/core/functions/app_images.dart';

class DashboardImages {
  final String ImagePath;

  DashboardImages({required this.ImagePath});
}

Future<List<DashboardImages>> resimleriYukle() async {
  final resimleriGetir = <DashboardImages>[];

  final r1 = DashboardImages(ImagePath: AppImages.firstDot);

  final r2 = DashboardImages(ImagePath: AppImages.twoDot);

  final r3 = DashboardImages(ImagePath: AppImages.threeDot);

  final r4 = DashboardImages(ImagePath: AppImages.fourDot);
  resimleriGetir.add(r1);
  resimleriGetir.add(r2);
  resimleriGetir.add(r3);
  resimleriGetir.add(r4);
  return resimleriGetir;
}
