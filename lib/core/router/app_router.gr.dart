// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AllScreen]
class AllRoute extends PageRouteInfo<void> {
  const AllRoute({List<PageRouteInfo>? children})
    : super(AllRoute.name, initialChildren: children);

  static const String name = 'AllRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AllScreen();
    },
  );
}

/// generated route for
/// [DoneScreen]
class DoneRoute extends PageRouteInfo<void> {
  const DoneRoute({List<PageRouteInfo>? children})
    : super(DoneRoute.name, initialChildren: children);

  static const String name = 'DoneRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DoneScreen();
    },
  );
}

/// generated route for
/// [ForMonthScreen]
class ForMonthRoute extends PageRouteInfo<void> {
  const ForMonthRoute({List<PageRouteInfo>? children})
    : super(ForMonthRoute.name, initialChildren: children);

  static const String name = 'ForMonthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ForMonthScreen();
    },
  );
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [HomeScreenWrapper]
class HomeRouteWrapper extends PageRouteInfo<void> {
  const HomeRouteWrapper({List<PageRouteInfo>? children})
    : super(HomeRouteWrapper.name, initialChildren: children);

  static const String name = 'HomeRouteWrapper';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const HomeScreenWrapper());
    },
  );
}

/// generated route for
/// [TodayScreen]
class TodayRoute extends PageRouteInfo<void> {
  const TodayRoute({List<PageRouteInfo>? children})
    : super(TodayRoute.name, initialChildren: children);

  static const String name = 'TodayRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TodayScreen();
    },
  );
}
