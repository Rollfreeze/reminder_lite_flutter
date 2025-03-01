import 'package:flutter/material.dart';
import 'package:progress_circle/progress_circle.dart';
import '../../../../../core/data/models/reminder_group.dart';
import '../../../../../core/style/app_colors.dart';
import '../../../../../core/style/app_radius.dart';
import '../../../../../core/style/app_shadows.dart';

/// A slider section with all progrss circles and theirs current tab indicator.
class ProgressSlider extends StatelessWidget {
  /// Progress circles' items.
  final List<ReminderGroup> items;

  /// A circles' slider controller.
  final PageController controller;

  /// When changes a current circle page.
  final ValueChanged<int> onPageChanged;

  /// Selected page indicator controller.
  final TabController tabController;

  const ProgressSlider({
    required this.items,
    required this.controller,
    required this.onPageChanged,
    required this.tabController,
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
          itemCount: items.length,
          onPageChanged: onPageChanged,
          itemBuilder: (_, index) {
            final item = items[index];
            return Center(
              child: ProgressCircle.fromValues(
                total: item.length.toDouble(),
                completed: item.completedAmount.toDouble(),
                size: const Size.square(220),
                style: ProgressCircleStyle(
                  headIcon: item.category.icon,
                  centerMessage: item.category.name,
                  progressArcColor: item.category.color,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
