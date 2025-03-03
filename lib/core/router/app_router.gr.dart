// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

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
/// [ListingScreen]
class ListingRoute extends PageRouteInfo<void> {
  const ListingRoute({List<PageRouteInfo>? children})
    : super(ListingRoute.name, initialChildren: children);

  static const String name = 'ListingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ListingScreen();
    },
  );
}

/// generated route for
/// [ListingScreenWrapper]
class ListingRouteWrapper extends PageRouteInfo<ListingRouteWrapperArgs> {
  ListingRouteWrapper({
    required ReminderGroup group,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         ListingRouteWrapper.name,
         args: ListingRouteWrapperArgs(group: group, key: key),
         initialChildren: children,
       );

  static const String name = 'ListingRouteWrapper';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ListingRouteWrapperArgs>();
      return WrappedRoute(
        child: ListingScreenWrapper(group: args.group, key: args.key),
      );
    },
  );
}

class ListingRouteWrapperArgs {
  const ListingRouteWrapperArgs({required this.group, this.key});

  final ReminderGroup group;

  final Key? key;

  @override
  String toString() {
    return 'ListingRouteWrapperArgs{group: $group, key: $key}';
  }
}
