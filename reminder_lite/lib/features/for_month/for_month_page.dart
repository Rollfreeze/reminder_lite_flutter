import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ForMonthPage extends StatelessWidget {
  const ForMonthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(),
      child: Center(
        child: Text(AppLocalizations.of(context)!.forMonth),
      ),
    );
  }
}