import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:reminder_lite/features/all/all_page.dart';
import 'package:reminder_lite/features/done/done_page.dart';
import 'package:reminder_lite/features/for_month/for_month_page.dart';
import 'package:reminder_lite/features/home/pages/home_page_route.dart';
import 'package:reminder_lite/features/today/today_page.dart';

class AppRouter {
  static final _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePageRoute();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'all',
            builder: (BuildContext context, GoRouterState state) {
              return const AllPage();
            },
          ),
          GoRoute(
            path: 'done',
            builder: (BuildContext context, GoRouterState state) {
              return const DonePage();
            },
          ),
          GoRoute(
            path: 'month',
            builder: (BuildContext context, GoRouterState state) {
              return const ForMonthPage();
            },
          ),
          GoRoute(
            path: 'today',
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
