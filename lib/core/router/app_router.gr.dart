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
        child: const AllPage(),
      );
    },
    DoneRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DonePage(),
      );
    },
    ForMonthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ForMonthPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    HomeRouteWrapper.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const HomePageWrapper()),
      );
    },
    TodayRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TodayPage(),
      );
    },
  };
}

/// generated route for
/// [AllPage]
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
/// [DonePage]
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
/// [ForMonthPage]
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
/// [HomePage]
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
/// [HomePageWrapper]
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
/// [TodayPage]
class TodayRoute extends PageRouteInfo<void> {
  const TodayRoute({List<PageRouteInfo>? children})
      : super(
          TodayRoute.name,
          initialChildren: children,
        );

  static const String name = 'TodayRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
