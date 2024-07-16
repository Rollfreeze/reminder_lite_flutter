import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocalizationService {
  LocalizationService._();

  static bool _isInitialized = false;
  static late final AppLocalizations locale;

  static void init(BuildContext context) {
    if (_isInitialized) return;
    locale = AppLocalizations.of(context)!;
    _isInitialized = true;
  }
}
