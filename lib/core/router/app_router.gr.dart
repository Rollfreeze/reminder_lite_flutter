// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AllRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AllScreen(),
      );
    },
    DoneRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DoneScreen(),
      );
    },
    ForMonthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ForMonthScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    HomeRouteWrapper.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const HomeScreenWrapper()),
      );
    },
    TodayRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TodayScreen(),
      );
    },
  };
}

/// generated route for
/// [AllScreen]
class AllRoute extends PageRouteInfo<void> {
  const AllRoute({List<PageRouteInfo>? children})
      : super(
          AllRoute.name,
          initialChildren: children,
        );

  static const String name = 'AllRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DoneScreen]
class DoneRoute extends PageRouteInfo<void> {
  const DoneRoute({List<PageRouteInfo>? children})
      : super(
          DoneRoute.name,
          initialChildren: children,
        );

  static const String name = 'DoneRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ForMonthScreen]
class ForMonthRoute extends PageRouteInfo<void> {
  const ForMonthRoute({List<PageRouteInfo>? children})
      : super(
          ForMonthRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForMonthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreenWrapper]
class HomeRouteWrapper extends PageRouteInfo<void> {
  const HomeRouteWrapper({List<PageRouteInfo>? children})
      : super(
          HomeRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouteWrapper';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TodayScreen]
class TodayRoute extends PageRouteInfo<void> {
  const TodayRoute({List<PageRouteInfo>? children})
      : super(
          TodayRoute.name,
          initialChildren: children,
        );

  static const String name = 'TodayRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
