import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import '../../core/services/localization_service.dart';

@RoutePage()
class ForMonthScreen extends StatelessWidget {
  const ForMonthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(),
      child: Center(
        child: Text(LocalizationService.locale.thisMonth),
      ),
    );
  }
}
