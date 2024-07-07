import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder_lite/features/home/domain/models/progress_circle_model.dart';
import 'package:reminder_lite/features/home/domain/models/reminder_categories.dart';

part 'progress_event.dart';
part 'progress_state.dart';
part 'progress_bloc.freezed.dart';

final _mock = [
  ProgressCircleModel(
    total: 5,
    completed: 4,
    category: TodayCategory(),
  ),
  ProgressCircleModel(
    total: 8,
    completed: 7,
    category: ForMonthCategory(),
  ),
  ProgressCircleModel(
    total: 10,
    completed: 7,
    category: AllCategory(),
  ),
];

class ProgressBloc extends Bloc<ProgressEvent, ProgressState> {
  ProgressBloc() : super(_Initial(TodayCategory(), _mock)) {
    on<_SelectedCategory>(_onSelectedCategory);
  }

  void _onSelectedCategory(
    _SelectedCategory event,
    Emitter<ProgressState> emit,
  ) =>
      emit(state.copyWith(category: event.category));
}
