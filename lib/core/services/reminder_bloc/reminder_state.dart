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
  const factory ReminderProcessingState.failure(ReminderCollection? reminders, String error) = _Failure;
  const factory ReminderProcessingState.fetched(ReminderCollection reminders) = _Fetched;
}

extension ReminderStateExtension on ReminderState {
  ReminderCollection? get reminders => switch (processingState) {
        _Processing() => null,
        _Failure(:final reminders) => reminders,
        _Fetched(:final reminders) => reminders,
      };
}
