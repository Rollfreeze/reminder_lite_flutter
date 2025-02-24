import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/categorized_reminders.dart';
import '../../data/repositories/reminder_repository.dart';

part 'reminder_event.dart';
part 'reminder_state.dart';
part 'reminder_bloc.freezed.dart';

class ReminderBloc extends Bloc<ReminderEvent, ReminderState> {
  final ReminderRepository _repository;

  ReminderBloc(this._repository) : super(const _Loading()) {
    on<ReminderEvent>(_handler);
    add(const _Load());
  }

  EventHandler<ReminderEvent, ReminderState> get _handler => (event, emit) => switch (event) {
        _Load() => _handleLoad(event, emit),
      };

  Future<void> _handleLoad(
    _Load event,
    Emitter<ReminderState> emit,
  ) async {
    final result = await _repository.getCategorizedReminders();
    result.map(
      success: (value) => emit(_Loaded(reminders: value.result)),
      failure: (value) => throw UnimplementedError('TODO Later'),
    );
  }
}
