import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/core/style/app_radius.dart';
import 'package:reminder_lite/core/style/app_shadows.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/progress_section.dart';

/// A circle with reminder progress category for [ProgressSection].
class ProgressCircleSection extends StatelessWidget {
  const ProgressCircleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 260,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: AppRadius.radius15,
          boxShadow: AppShadows.defaultShadow,
          color: AppColors.white,
        ),
        child: Center(
          child: ColoredBox(
            color: AppColors.gray2,
            child: SizedBox.square(
              dimension: 218,
            ),
          ),
        ),
      ),
    );
  }
}
