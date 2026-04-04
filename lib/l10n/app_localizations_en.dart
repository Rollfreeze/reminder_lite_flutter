// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get today => 'Today';

  @override
  String get thisMonth => 'This month';

  @override
  String get all => 'All';

  @override
  String get completed => 'Completed';

  @override
  String completeAmount(int completed, int total) {
    final intl.NumberFormat completedNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String completedString = completedNumberFormat.format(completed);
    final intl.NumberFormat totalNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String totalString = totalNumberFormat.format(total);

    return 'Completed:\n$completedString out of $totalString';
  }

  @override
  String get reminder => 'Reminder';

  @override
  String get noReminders => 'No Reminders';

  @override
  String get morning => 'Morning';

  @override
  String get afternoon => 'Afternoon';

  @override
  String get tonight => 'Tonight';

  @override
  String get cancel => 'Cancel';

  @override
  String get newReminder => 'New Reminder';

  @override
  String get add => 'Add';

  @override
  String get name => 'Name';

  @override
  String get notes => 'Notes';
}
