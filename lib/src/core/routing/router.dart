import 'package:auto_route/auto_route.dart';
import 'package:travel_app/src/core/routing/router.gr.dart';
import 'package:travel_app/src/core/routing/routeromer.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        ...routesomer,
      ];
}
