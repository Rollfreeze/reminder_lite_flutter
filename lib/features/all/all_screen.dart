import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/services/localization_service.dart';

@RoutePage()
class AllScreen extends StatelessWidget {
  const AllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(),
      child: Center(
        child: Text(LocalizationService.locale.all),
      ),
    );
  }
}
