part of 'progress_bloc.dart';

@freezed
class ProgressState with _$ProgressState {
  const factory ProgressState({
    ReminderCollection? reminders,
    @Default(ReminderCategory.today) ReminderCategory selected,
  }) = _ProgressState;
}
