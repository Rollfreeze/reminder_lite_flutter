/// Reminder repeat option.
enum RepeatanceOption {
  never(0),
  daily(1),
  weekdays(2),
  weekends(3),
  weekly(4),
  fortnightly(5),
  monthly(6),
  every3Months(7),
  every6Months(8),
  yearly(9);

  final int code;

  const RepeatanceOption(this.code);

  /// Create RepeatanceOption instance from code.
  factory RepeatanceOption.fromCode(int code) {
    for (final value in values) {
      if (code == value.code) return value;
    }
    throw ArgumentError('No such code in options: $code');
  }
}
