import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/categorized_reminders.dart';
import '../../data/models/reminder_category.dart';
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
      };

  void _handleLoad(_Load event, Emitter<ReminderState> emit) => _repository.get().then(
        (result) => result.map(
          success: (success) => emit(
            state.copyWith(
              processingState: ReminderProcessingState.fetched(success.result),
            ),
          ),
          failure: (failure) => emit(
            state.copyWith(
              processingState: ReminderProcessingState.failure(CategorizedReminders.empty(), failure.error),
            ),
          ),
        ),
      );

  void _handleCreate(_Create event, Emitter<ReminderState> emit) => _repository.add(state.reminders).then(
        (result) => result.map(
          success: (success) => emit(
            state.copyWith(
              processingState: ReminderProcessingState.fetched(success.result),
            ),
          ),
          failure: (failure) => emit(
            state.copyWith(
              processingState: ReminderProcessingState.failure(state.reminders, failure.error),
            ),
          ),
        ),
      );
}
