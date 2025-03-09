import 'package:freezed_annotation/freezed_annotation.dart';

extension DateTimeExtension on DateTime {
  bool get isToday {
    DateTime now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  bool get isCurrentMonth {
    DateTime now = DateTime.now();
    return year == now.year && month == now.month;
  }
}

class DateTimeSerializer implements JsonConverter<DateTime?, String?> {
  const DateTimeSerializer();

  @override
  DateTime? fromJson(String? date) {
    if (date == null || date.isEmpty) return null;
    return DateTime.tryParse(date);
  }

  @override
  String? toJson(DateTime? date) => date?.toIso8601String();
}
