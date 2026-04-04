// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get today => 'Сегодня';

  @override
  String get thisMonth => 'Этот месяц';

  @override
  String get all => 'Все';

  @override
  String get completed => 'Завершено';

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

    return 'Выполнено:\n$completedString из $totalString';
  }

  @override
  String get reminder => 'Напоминание';

  @override
  String get noReminders => 'Напоминаний нет';

  @override
  String get morning => 'Утром';

  @override
  String get afternoon => 'Днем';

  @override
  String get tonight => 'Вечером';

  @override
  String get cancel => 'Отменить';

  @override
  String get newReminder => 'Новое напоминание';

  @override
  String get add => 'Добавить';

  @override
  String get name => 'Название';

  @override
  String get notes => 'Заметки';
}
