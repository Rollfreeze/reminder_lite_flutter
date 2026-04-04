import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/data/models/reminder_category.dart';
import '../../../core/data/models/reminder_collection.dart';
import '../../../core/services/reminder_bloc/reminder_bloc.dart';

part 'progress_event.dart';
part 'progress_state.dart';
part 'progress_bloc.freezed.dart';

class ProgressBloc extends Bloc<ProgressEvent, ProgressState> {
  ProgressBloc(this._reminderBloc) : super(const ProgressState()) {
    on<ProgressEvent>(_handler);
    _subscription = _reminderBloc.stream.listen((state) => add(_Actualize(state.reminders)));
  }

  final ReminderBloc _reminderBloc;
  late final StreamSubscription<ReminderState> _subscription;

  EventHandler<ProgressEvent, ProgressState> get _handler => (event, emit) => switch (event) {
        _Select() => _handleSelect(event, emit),
        _Actualize() => _handleActualize(event, emit),
      };

  void _handleSelect(_Select event, Emitter<ProgressState> emit) => emit(
        state.copyWith(selected: event.category),
      );

  void _handleActualize(_Actualize event, Emitter<ProgressState> emit) => emit(
        state.copyWith(reminders: event.reminders),
      );

  @override
  Future<void> close() async {
    await _subscription.cancel();
    return super.close();
  }
}
