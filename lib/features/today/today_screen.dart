import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/services/localization_service.dart';

@RoutePage()
class TodayScreen extends StatelessWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(),
      child: Center(
        child: Text(LocalizationService.locale.today),
      ),
    );
  }
}
