import 'package:flutter/material.dart';
import 'package:progress_circle/progress_circle.dart';
import '../../../../../core/data/models/reminder_collection.dart';
import '../../../../../core/style/app_colors.dart';
import '../../../../../core/style/app_radius.dart';
import '../../../../../core/style/app_shadows.dart';

/// A slider section with all progrss circles and theirs current tab indicator.
class ProgressSlider extends StatelessWidget {
  /// Reminders for appropriate circles.
  final ReminderCollection reminders;

  /// A circles' slider controller.
  final PageController controller;

  /// Selected page indicator controller.
  final TabController tabController;

  /// When changes a current circle page.
  final ValueChanged<int> onPageChanged;

  const ProgressSlider({
    required this.reminders,
    required this.controller,
    required this.tabController,
    required this.onPageChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          borderRadius: AppRadius.radius15,
          boxShadow: AppShadows.defaultShadow,
          color: AppColors.white,
        ),
        child: PageView.builder(
          controller: controller,
          itemCount: reminders.groups.length - 1,
          onPageChanged: onPageChanged,
          itemBuilder: (_, index) {
            final group = reminders.groups[index];
            return Center(
              child: ProgressCircle.fromValues(
                total: group.length.toDouble(),
                completed: group.completedAmount.toDouble(),
                size: const Size.square(220),
                style: ProgressCircleStyle(
                  headIconSize: 30.0,
                  headIcon: Icons.chevron_right,
                  useHeadIconRotation: true,
                  centerMessage: group.progressMessage,
                  progressArcColor: group.category.color,
                  showZeroProgress: group.length > 0,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
