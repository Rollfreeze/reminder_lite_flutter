part of 'reminder_bloc.dart';

@freezed
class ReminderState with _$ReminderState {
  const factory ReminderState({
    @Default(ReminderCategory.today) ReminderCategory selectedCategory,
    @Default(ReminderProcessingState.processing()) ReminderProcessingState processingState,
  }) = _ReminderState;
}

@freezed
sealed class ReminderProcessingState with _$ReminderProcessingState {
  const factory ReminderProcessingState.processing() = _Processing;
  const factory ReminderProcessingState.failure(CategorizedReminders reminders, String error) = _Failure;
  const factory ReminderProcessingState.fetched(CategorizedReminders reminders) = _Fetched;
}

extension ReminderStateExtension on ReminderState {
  CategorizedReminders get reminders => switch (processingState) {
        _Processing() => CategorizedReminders.empty(),
        _Failure(:final reminders) => reminders,
        _Fetched(:final reminders) => reminders,
      };
}
