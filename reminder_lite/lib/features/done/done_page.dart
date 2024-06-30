import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/services/localization_service.dart';

class DonePage extends StatelessWidget {
  const DonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(),
      child: Center(
        child: Text(LocalizationService.locale.done),
      ),
    );
  }
}
