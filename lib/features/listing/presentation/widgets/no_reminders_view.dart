import 'package:flutter/cupertino.dart';
import '../../../../core/services/localization_service.dart';
import '../../../../core/style/app_colors.dart';
import '../../../../core/style/app_typo.dart';

class NoRemindersView extends StatelessWidget {
  const NoRemindersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              LocalizationService.locale.noReminders,
              style: AppTypo.regular16.copyWith(color: AppColors.text3),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const Expanded(flex: 3, child: SizedBox()),
      ],
    );
  }
}
