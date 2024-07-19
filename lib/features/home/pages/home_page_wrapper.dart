import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_lite/core/services/localization_service.dart';
import 'package:reminder_lite/features/home/domain/bloc/progress_bloc/progress_bloc.dart';
import 'package:reminder_lite/features/home/pages/home_page.dart';

/// A Di wrapper for [HomePage].
@RoutePage()
class HomePageWrapper extends AutoRouter implements AutoRouteWrapper {
  const HomePageWrapper({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    LocalizationService.init(context);
    return BlocProvider(
      create: (_) => ProgressBloc(),
      child: this,
    );
  }
}
