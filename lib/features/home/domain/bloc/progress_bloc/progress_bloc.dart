import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/progress_circle_model.dart';
import '../../../../../core/models/reminder_categories.dart';

part 'progress_event.dart';
part 'progress_state.dart';
part 'progress_bloc.freezed.dart';

final _mock = [
  ProgressCircleModel(
    total: 10,
    completed: 4,
    category: TodayCategory(),
  ),
  ProgressCircleModel(
    total: 20,
    completed: 16,
    category: ForMonthCategory(),
  ),
  ProgressCircleModel(
    total: 30,
    completed: 20,
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
