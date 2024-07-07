import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/core/style/app_radius.dart';
import 'package:reminder_lite/core/style/app_shadows.dart';
import 'package:reminder_lite/features/home/domain/models/progress_circle_model.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/progress_circle.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/progress_section.dart';

/// A circle with reminder progress category for [ProgressSection].
class ProgressCircleSection extends StatelessWidget {
  /// Progress circles' items.
  final List<ProgressCircleModel> items;

  /// A circles' slider controller.
  final PageController controller;

  /// When changes a current circle page.
  final ValueChanged<int> onPageChanged;

  const ProgressCircleSection({
    super.key,
    required this.items,
    required this.controller,
    required this.onPageChanged,
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
          itemBuilder: (_, index) => ProgressCircle(
            model: items[index],
          ),
        ),
      ),
    );
  }
}
