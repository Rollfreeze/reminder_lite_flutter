/// Remindeer repeatance options
enum RepeatanceOption {
  never(0),
  daily(1),
  weekdays(2),
  weekends(3),
  weekly(4),
  every2Weeks(5),
  fortnightly(6),
  monthly(7),
  every3Months(8),
  every6Months(9),
  yearly(10);

  final int code;

  const RepeatanceOption(this.code);

  /// Create RepeatanceOption instance from code.
  factory RepeatanceOption.fromCode(int code) {
    for (final value in values) {
      if (code == value.code) return value;
    }
    throw ArgumentError('Wrong code: $code');
  }
}
