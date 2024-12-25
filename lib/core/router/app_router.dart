import 'package:auto_route/auto_route.dart';
import 'package:reminder_lite/features/all/all_page.dart';
import 'package:reminder_lite/features/done/done_page.dart';
import 'package:reminder_lite/features/for_month/for_month_page.dart';
import 'package:reminder_lite/features/home/presentation/screens/home_page.dart';
import 'package:reminder_lite/features/home/di/home_page_wrapper.dart';
import 'package:reminder_lite/features/today/today_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
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
              path: 'all',
              page: AllRoute.page,
              title: (_, __) => '',
            ),
            CupertinoRoute(
              path: 'done',
              page: DoneRoute.page,
              title: (_, __) => '',
            ),
            CupertinoRoute(
              path: 'month',
              page: ForMonthRoute.page,
              title: (_, __) => '',
            ),
            CupertinoRoute(
              path: 'today',
              page: TodayRoute.page,
              title: (_, __) => '',
            ),
          ],
        ),
      ];
}
