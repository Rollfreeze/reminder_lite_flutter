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

class DateTimeSerializer implements JsonConverter<DateTime?, int?> {
  const DateTimeSerializer();

  @override
  DateTime? fromJson(int? timestamp) {
    if (timestamp == null) return null;
    /// Swift is returing seconds so it is need to convert it to ms. 
    return DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  }

  @override
  int? toJson(DateTime? date) => date == null ? null : (date.millisecondsSinceEpoch / 1000).floor();
}
