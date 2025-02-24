import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/reminder.dart';
import '../../data/models/reminder_categories.dart';
import '../reminder_service.dart';

part 'reminder_event.dart';
part 'reminder_state.dart';
part 'reminder_bloc.freezed.dart';

class ReminderBloc extends Bloc<ReminderEvent, ReminderState> {
  final ReminderService _reminderService;

  ReminderBloc(this._reminderService) : super(const _Loading()) {
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
    final reminders = await _reminderService.fetchFor(ReminderCategory.all);
  }
}
