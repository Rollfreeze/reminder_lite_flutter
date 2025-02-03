import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/services/localization_service.dart';
import '../domain/bloc/progress_bloc/progress_bloc.dart';
import '../presentation/screens/home_screen.dart';

/// Di wrapper for [HomeScreen].
@RoutePage()
class HomeScreenWrapper extends AutoRouter implements AutoRouteWrapper {
  const HomeScreenWrapper({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    LocalizationService.init(context);
    return BlocProvider(
      create: (_) => ProgressBloc(),
      child: this,
    );
  }
}
