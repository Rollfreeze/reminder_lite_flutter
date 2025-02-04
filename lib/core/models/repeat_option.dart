/// Remindeer repeatance options
enum RepeatOption {
  never('Never'),
  daily('Daily'),
  weekdays('Weekdays'),
  weekends('Weekends'),
  weekly('Weekly'),
  every2Weeks('Every 2 Weeks'),
  fortnightly('Fortnightly'),
  monthly('Monthly'),
  every3Months('Every 3 Months'),
  every6Months('Every 6 Months'),
  yearly('Yearly');

  final String name;

  const RepeatOption(this.name);

  /// Create RepeatanceOption instance from code.
  factory RepeatOption.fromName(String name) {
    for (final value in values) {
      if (name == value.name) return value;
    }
    throw ArgumentError('No such value in options: $name');
  }
}
