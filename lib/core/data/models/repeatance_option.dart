import 'package:freezed_annotation/freezed_annotation.dart';

part 'repeatance_option.g.dart';

/// Reminder repeat option.
@JsonEnum(alwaysCreate: true)
enum RepeatanceOption {
  @JsonValue(0) never,
  @JsonValue(1) daily,
  @JsonValue(2) weekdays,
  @JsonValue(3) weekends,
  @JsonValue(4) weekly,
  @JsonValue(5) fortnightly,
  @JsonValue(6) monthly,
  @JsonValue(7) every3Months,
  @JsonValue(8) every6Months,
  @JsonValue(9) yearly;
}
