import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:reminder_lite/core/services/localization_service.dart';

@RoutePage()
class AllPage extends StatelessWidget {
  const AllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(),
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            showCupertinoModalBottomSheet(
              context: context,
              builder: (context) {
                return ColoredBox(
                  color: Colors.blue,
                  child: Column(),
                );
              },
            );
          },
          child: Text(LocalizationService.locale.all),
        ),
      ),
    );
  }
}
