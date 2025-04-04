import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/reminder.dart';
import '../../data/models/reminder_category.dart';
import '../../data/models/reminder_collection.dart';
import '../../data/models/result.dart';
import '../../data/repositories/reminder_repository.dart';

part 'reminder_event.dart';
part 'reminder_state.dart';
part 'reminder_bloc.freezed.dart';

class ReminderBloc extends Bloc<ReminderEvent, ReminderState> {
  final ReminderRepository _repository;

  ReminderBloc(this._repository) : super(const ReminderState()) {
    on<ReminderEvent>(_handler);
    add(const _Load());
  }

  EventHandler<ReminderEvent, ReminderState> get _handler => (event, emit) => switch (event) {
        _Load() => _handleLoad(event, emit),
        _Create() => _handleCreate(event, emit),
        _Edit() => _handleEdit(event, emit),
        _ToggleCompletion() => _handleToggleCompletion(event, emit),
        _Succeed() => _handleSucceed(event, emit),
        _Fail() => _handleFail(event, emit),
      };

  Future<void> _handleLoad(_Load event, Emitter<ReminderState> emit) async {
    final result = await _repository.getReminders();

    return switch (result) {
      Success(:final result) => add(_Succeed(result)),
      Failure(:final error) => add(_Fail(error)),
    };
  }

  Future<void> _handleCreate(_Create event, Emitter<ReminderState> emit) async {
    final reminders = state.reminders;

    // A new reminder can not be created if others haven't been loaded yet.
    if (reminders == null) return;

    final result = await _repository.addNewReminderTo(reminders);

    return switch (result) {
      Success(:final result) => add(_Succeed(result)),
      Failure(:final error) => add(_Fail(error)),
    };
  }

  Future<void> _handleEdit(_Edit event, Emitter<ReminderState> emit) async {
    final reminders = state.reminders;

    // A reminder can not be edited if others haven't been loaded yet.
    if (reminders == null) return;

    final result = await _repository.edit(
      event.reminder,
      currentReminders: reminders,
    );

    return switch (result) {
      Success(:final result) => add(_Succeed(result)),
      Failure(:final error) => add(_Fail(error)),
    };
  }

  Future<void> _handleToggleCompletion(_ToggleCompletion event, Emitter<ReminderState> emit) async {
    final reminders = state.reminders;

    // A reminder can not toggle completion if others haven't been loaded yet.
    if (reminders == null) return;

    final result = await _repository.toggleCompletionOf(
      event.reminder,
      currentReminders: reminders,
    );

    return switch (result) {
      Success(:final result) => add(_Succeed(result)),
      Failure(:final error) => add(_Fail(error)),
    };
  }

  void _handleSucceed(_Succeed event, Emitter<ReminderState> emit) => emit(
        state.copyWith(
          processingState: ReminderProcessingState.fetched(event.reminders),
        ),
      );

  void _handleFail(_Fail event, Emitter<ReminderState> emit) => emit(
        state.copyWith(
          processingState: ReminderProcessingState.failure(state.reminders, event.error),
        ),
      );
}
