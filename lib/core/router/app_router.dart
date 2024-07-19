import 'package:auto_route/auto_route.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:reminder_lite/features/all/all_page.dart';
import 'package:reminder_lite/features/done/done_page.dart';
import 'package:reminder_lite/features/for_month/for_month_page.dart';
import 'package:reminder_lite/features/home/pages/home_page.dart';
import 'package:reminder_lite/features/home/pages/home_page_wrapper.dart';
import 'package:reminder_lite/features/today/today_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: HomeRouteWrapper.page,
          children: [
            CustomRoute(
              path: '',
              page: HomeRoute.page,
              customRouteBuilder: (_, child, page) {
                return MaterialWithModalsPageRoute(
                  fullscreenDialog: page.fullscreenDialog,
                  settings: page,
                  builder: (_) => child,
                );
              },
            ),
            AutoRoute(
              path: 'all',
              page: AllRoute.page,
            ),
            AutoRoute(
              path: 'done',
              page: DoneRoute.page,
            ),
            AutoRoute(
              path: 'month',
              page: ForMonthRoute.page,
            ),
            AutoRoute(
              path: 'today',
              page: TodayRoute.page,
            ),
          ],
        ),
      ];
}
