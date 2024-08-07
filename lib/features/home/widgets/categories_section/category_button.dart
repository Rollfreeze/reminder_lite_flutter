import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/core/style/app_radius.dart';
import 'package:reminder_lite/core/style/app_shadows.dart';
import 'package:reminder_lite/core/style/app_typo.dart';
import 'package:reminder_lite/core/models/reminder_categories.dart';

/// Reminder category page button.
class CategoryButton extends StatelessWidget {
  /// The current reminder category.
  final ReminderCategory category;

  /// The top right corner count value.
  final int count;

  /// Call on tap the widget.
  final VoidCallback onTap;

  const CategoryButton({
    super.key,
    required this.category,
    required this.count,
    required this.onTap,
  });

  static const _iconSize = 12.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          borderRadius: AppRadius.radius12,
          boxShadow: AppShadows.defaultShadow,
          color: AppColors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 13, 6),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox.square(
                    dimension: 22,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: category.color,
                      ),
                      child: Icon(
                        category.icon,
                        color: AppColors.white,
                        size: _iconSize,
                      ),
                    ),
                  ),
                  Text('$count', style: AppTypo.bold17),
                ],
              ),
              const SizedBox(height: 11),
              Text(
                category.name,
                style: AppTypo.semibold13.copyWith(
                  color: AppColors.text3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
