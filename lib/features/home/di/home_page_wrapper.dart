import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/data/repositories/reminder_repository.dart';
import '../../../core/services/localization_service.dart';
import '../../../core/services/reminder_bloc/reminder_bloc.dart';
import '../../../core/services/reminder_service.dart';
import '../presentation/screens/home_screen.dart';
import '../services/bloc/progress_bloc.dart';

/// Di wrapper for [HomeScreen].
@RoutePage()
class HomeScreenWrapper extends AutoRouter implements AutoRouteWrapper {
  const HomeScreenWrapper({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    LocalizationService.init(context);

    final repository = ReminderRepository(ReminderService());
    final reminderBloc = ReminderBloc(repository);
    final progressBloc = ProgressBloc(reminderBloc);

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => reminderBloc),
        BlocProvider(create: (_) => progressBloc),
      ],
      child: this,
    );
  }
}
