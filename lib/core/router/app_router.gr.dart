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
class ListingRoute extends PageRouteInfo<ListingRouteArgs> {
  ListingRoute({
    required ReminderCategory category,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         ListingRoute.name,
         args: ListingRouteArgs(category: category, key: key),
         initialChildren: children,
       );

  static const String name = 'ListingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ListingRouteArgs>();
      return ListingScreen(category: args.category, key: args.key);
    },
  );
}

class ListingRouteArgs {
  const ListingRouteArgs({required this.category, this.key});

  final ReminderCategory category;

  final Key? key;

  @override
  String toString() {
    return 'ListingRouteArgs{category: $category, key: $key}';
  }
}
