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
  const factory ReminderProcessingState.processing() = Processing;
  const factory ReminderProcessingState.failure(CategorizedReminders reminders, String error) = Failure;
  const factory ReminderProcessingState.fetched(CategorizedReminders reminders) = Fetched;
}

extension ReminderStateExtension on ReminderState {
  CategorizedReminders get reminders => processingState.map(
        processing: (_) => CategorizedReminders.empty(),
        failure: (failure) => failure.reminders,
        fetched: (fetched) => fetched.reminders,
      );
}
