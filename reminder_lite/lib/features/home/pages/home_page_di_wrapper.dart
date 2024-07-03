import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_lite/core/services/localization_service.dart';
import 'package:reminder_lite/features/home/domain/bloc/progress_bloc/progress_bloc.dart';
import 'package:reminder_lite/features/home/pages/home_page.dart';

/// A Di wrapper for [HomePage].
class HomePageDiWrapper extends StatelessWidget {
  final HomePage child;

  const HomePageDiWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    LocalizationService.init(context);
    return BlocProvider(
      create: (_) => ProgressBloc(),
      child: child,
    );
  }
}
