import 'package:auto_route/auto_route.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/home/di/home_page_wrapper.dart';
import '../../features/today/today_screen.dart';

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
              path: 'today',
              page: TodayRoute.page,
              title: (_, __) => '',
            ),
          ],
        ),
      ];
}
