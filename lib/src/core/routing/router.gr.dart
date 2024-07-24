// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:travel_app/src/core/components/drawer.dart' as _i6;
import 'package:travel_app/src/features/dashboard/data/models/trending_place_model.dart' as _i10;
import 'package:travel_app/src/features/dashboard/presentation/view/dashboard_view.dart' as _i1;
import 'package:travel_app/src/features/featuredplaces/presentation/view/feature_places_view.dart' as _i5;
import 'package:travel_app/src/features/login/presentation/view/splash_view.dart' as _i2;
import 'package:travel_app/src/features/places/presentation/view/places_view.dart' as _i3;
import 'package:travel_app/src/features/settings/presentation/view/settings_view.dart' as _i7;
import 'package:travel_app/src/features/splash/presentation/view/splash_view.dart' as _i4;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    DashBoardRoute.name: (routeData) {
      final args = routeData.argsAs<DashBoardRouteArgs>(orElse: () => const DashBoardRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.DashBoardView(key: args.key),
      );
    },
    LoginRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginView(),
      );
    },
    PlacesRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PlacesView(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SplashView(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.RegisterView(),
      );
    },
    WalkThroughRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.WalkThroughView(),
      );
    },
    FeaturePlacesRoute.name: (routeData) {
      final args = routeData.argsAs<FeaturePlacesRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.FeaturePlacesView(
          key: args.key,
          urun: args.urun,
        ),
      );
    },
    CustomDrawerRouter.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.CustomDrawer(),
      );
    },
    SettingsViewRouter.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SettingsView(),
      );
    },
  };
}

/// generated route for
/// [_i1.DashBoardView]
class DashBoardRoute extends _i8.PageRouteInfo<DashBoardRouteArgs> {
  DashBoardRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          DashBoardRoute.name,
          args: DashBoardRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'DashBoardRoute';

  static const _i8.PageInfo<DashBoardRouteArgs> page = _i8.PageInfo<DashBoardRouteArgs>(name);
}

class DashBoardRouteArgs {
  const DashBoardRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'DashBoardRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.LoginView]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.PlacesView]
class PlacesRoute extends _i8.PageRouteInfo<void> {
  const PlacesRoute({List<_i8.PageRouteInfo>? children})
      : super(
          PlacesRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlacesRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SplashView]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.RegisterView]
class RegisterRoute extends _i8.PageRouteInfo<void> {
  const RegisterRoute({List<_i8.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.WalkThroughView]
class WalkThroughRoute extends _i8.PageRouteInfo<void> {
  const WalkThroughRoute({List<_i8.PageRouteInfo>? children})
      : super(
          WalkThroughRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalkThroughRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.FeaturePlacesView]
class FeaturePlacesRoute extends _i8.PageRouteInfo<FeaturePlacesRouteArgs> {
  FeaturePlacesRoute({
    _i9.Key? key,
    required _i10.TrendingPlace urun,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          FeaturePlacesRoute.name,
          args: FeaturePlacesRouteArgs(
            key: key,
            urun: urun,
          ),
          initialChildren: children,
        );

  static const String name = 'FeaturePlacesRoute';

  static const _i8.PageInfo<FeaturePlacesRouteArgs> page = _i8.PageInfo<FeaturePlacesRouteArgs>(name);
}

class FeaturePlacesRouteArgs {
  const FeaturePlacesRouteArgs({
    this.key,
    required this.urun,
  });

  final _i9.Key? key;

  final _i10.TrendingPlace urun;

  @override
  String toString() {
    return 'FeaturePlacesRouteArgs{key: $key, urun: $urun}';
  }
}

/// generated route for
/// [_i6.CustomDrawer]
class CustomDrawerRouter extends _i8.PageRouteInfo<void> {
  const CustomDrawerRouter({List<_i8.PageRouteInfo>? children})
      : super(
          CustomDrawerRouter.name,
          initialChildren: children,
        );

  static const String name = 'CustomDrawerRouter';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SettingsView]
class SettingsViewRouter extends _i8.PageRouteInfo<void> {
  const SettingsViewRouter({List<_i8.PageRouteInfo>? children})
      : super(
          SettingsViewRouter.name,
          initialChildren: children,
        );

  static const String name = 'SettingsViewRouter';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
