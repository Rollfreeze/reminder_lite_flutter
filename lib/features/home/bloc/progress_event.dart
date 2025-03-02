part of 'progress_bloc.dart';

@freezed
sealed class ProgressEvent with _$ProgressEvent {
  const factory ProgressEvent.select(ReminderCategory category) = _Select;
  const factory ProgressEvent.actualize(ReminderCollection? reminders) = _Actualize;
}
