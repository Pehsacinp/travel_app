import 'package:auto_route/auto_route.dart';
import 'package:travel_app/src/core/routing/router.gr.dart';

List<AutoRoute> get routesomer => [
      /* CustomRoute(
          page: QuestionsRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft), */
      CustomRoute(
        page: SplashRoute.page,
        initial: true,
      ),
      CustomRoute(
        page: RegisterRoute.page,
        transitionsBuilder: TransitionsBuilders.slideBottom,
        durationInMilliseconds: 3,
      ),
      CustomRoute(
        page: LoginRoute.page,
        transitionsBuilder: TransitionsBuilders.slideBottom,
      ),
      CustomRoute(
        page: WalkThroughRoute.page,
        transitionsBuilder: TransitionsBuilders.slideLeft,
      ),
      CustomRoute(
        page: DashBoardRoute.page,
        transitionsBuilder: TransitionsBuilders.slideLeft,
      ),
      CustomRoute(
        page: PlacesRoute.page,
        transitionsBuilder: TransitionsBuilders.slideLeft,
      ),
      CustomRoute(
        page: FeaturePlacesRoute.page,
        transitionsBuilder: TransitionsBuilders.slideLeft,
      ),
      CustomRoute(
        page: CustomDrawerRouter.page,
      ),
      CustomRoute(page: SettingsViewRouter.page),
    ];
