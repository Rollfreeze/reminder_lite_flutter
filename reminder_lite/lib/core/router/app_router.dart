import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:reminder_lite/core/services/localization_service.dart';
import 'package:reminder_lite/features/all/all_page.dart';
import 'package:reminder_lite/features/done/done_page.dart';
import 'package:reminder_lite/features/home/pages/home_page.dart';
import 'package:reminder_lite/features/for_month/for_month_page.dart';
import 'package:reminder_lite/features/today/today_page.dart';

const kHome = '/';
const kAll = 'all';
const kDone = 'done';
const kMonth = 'month';
const kToday = 'today';

class AppRouter {
  /// The route configuration.
  static final _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          LocalizationService.init(context);
          return const HomePage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: kAll,
            builder: (BuildContext context, GoRouterState state) {
              return const AllPage();
            },
          ),
          GoRoute(
            path: kDone,
            builder: (BuildContext context, GoRouterState state) {
              return const DonePage();
            },
          ),
          GoRoute(
            path: kMonth,
            builder: (BuildContext context, GoRouterState state) {
              return const ForMonthPage();
            },
          ),
          GoRoute(
            path: kToday,
            builder: (BuildContext context, GoRouterState state) {
              return const TodayPage();
            },
          ),
        ],
      ),
    ],
  );

  static GoRouter get router => _router;
}
