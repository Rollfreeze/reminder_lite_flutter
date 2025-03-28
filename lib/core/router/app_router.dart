import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/home/di/home_screen_wrapper.dart';
import '../../features/listing/presentation/screens/listing_screen.dart';
import '../data/models/reminder_category.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        CupertinoRoute(
          path: '/',
          page: HomeRouteWrapper.page,
          children: [
            CupertinoRoute(
              path: '',
              page: HomeRoute.page,
              title: (_, __) => '',
            ),
            CupertinoRoute(
              path: 'listing',
              page: ListingRoute.page,
              title: (_, __) => '',
            ),
          ],
        ),
      ];
}
