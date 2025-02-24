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
