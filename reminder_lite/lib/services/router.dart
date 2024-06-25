import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:reminder_lite/screens/all_page.dart';
import 'package:reminder_lite/screens/finished_page.dart';
import 'package:reminder_lite/screens/home_page.dart';
import 'package:reminder_lite/screens/month_page.dart';
import 'package:reminder_lite/screens/today_page.dart';

const kHome = '/';
const kAll = 'all';
const kFinished = 'finished';
const kMonth = 'month';
const kToday = 'today';

class AppRouter {
  /// The route configuration.
  static final _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
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
            path: kFinished,
            builder: (BuildContext context, GoRouterState state) {
              return const FinishedPage();
            },
          ),
          GoRoute(
            path: kMonth,
            builder: (BuildContext context, GoRouterState state) {
              return const MonthPage();
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
