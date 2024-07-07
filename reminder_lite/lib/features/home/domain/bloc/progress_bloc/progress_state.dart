part of 'progress_bloc.dart';

@freezed
class ProgressState with _$ProgressState {
  const factory ProgressState.initial(
    ReminderCategory category,
    List<ProgressCircleModel> items,
  ) = _Initial;
}
