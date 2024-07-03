part of 'progress_bloc.dart';

@freezed
class ProgressEvent with _$ProgressEvent {
  /// Select a category to show.
  const factory ProgressEvent.selectedCategory(ReminderCategory category) = _SelectedCategory;
}
