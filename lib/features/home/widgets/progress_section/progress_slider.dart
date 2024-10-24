import 'package:flutter/material.dart';
import 'package:progress_circle/progress_circle.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/core/style/app_radius.dart';
import 'package:reminder_lite/core/style/app_shadows.dart';
import 'package:reminder_lite/features/home/domain/models/progress_circle_model.dart';

/// A slider section with all progrss circles and theirs current tab indicator.
class ProgressSlider extends StatelessWidget {
  /// Progress circles' items.
  final List<ProgressCircleModel> items;

  /// A circles' slider controller.
  final PageController controller;

  /// When changes a current circle page.
  final ValueChanged<int> onPageChanged;

  /// Selected page indicator controller.
  final TabController tabController;

  const ProgressSlider({
    super.key,
    required this.items,
    required this.controller,
    required this.onPageChanged,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          borderRadius: AppRadius.radius15,
          boxShadow: AppShadows.defaultShadow,
          color: AppColors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller,
                itemCount: items.length,
                onPageChanged: onPageChanged,
                itemBuilder: (_, index) => const ProgressCircle.fromValues(
                  boxSize: 220,
                  total: 4,
                  completed: 3,
                ),
              ),
            ),
            const SizedBox(height: 5),
            TabPageSelector(
              controller: tabController,
              borderStyle: BorderStyle.none,
              color: AppColors.gray1,
              indicatorSize: 10,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
