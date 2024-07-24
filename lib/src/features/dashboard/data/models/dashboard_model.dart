class dashboardModel {
  final String ImagePath;

  dashboardModel({required this.ImagePath});
}

Future<List<dashboardModel>> urunleriYukle() async {
  final verilerim = <dashboardModel>[];

  final v1 = dashboardModel(ImagePath: '');

  verilerim.add(v1);

  return verilerim;
}
