import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/services/localization_service.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/core/style/app_radius.dart';
import 'package:reminder_lite/core/style/app_shadows.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/progress_circle.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/progress_section.dart';

/// A circle with reminder progress category for [ProgressSection].
class ProgressCircleSection extends StatelessWidget {
  const ProgressCircleSection({super.key});

  @override
  Widget build(BuildContext context) {
    const done = 3;
    const total = 7;
    return SizedBox(
      height: 260,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          borderRadius: AppRadius.radius15,
          boxShadow: AppShadows.defaultShadow,
          color: AppColors.white,
        ),
        child: Center(
          child: SizedBox.square(
            dimension: 218,
            child: ColoredBox(
              color: AppColors.black,
              child: ProgressCircle(
                done: done,
                total: total,
                centerMessage:
                    '${LocalizationService.locale.completed}:\n$done ${LocalizationService.locale.from} $total',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
