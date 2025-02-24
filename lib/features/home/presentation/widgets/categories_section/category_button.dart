import 'package:flutter/cupertino.dart';
import '../../../../../core/style/app_colors.dart';
import '../../../../../core/style/app_radius.dart';
import '../../../../../core/style/app_shadows.dart';
import '../../../../../core/style/app_typo.dart';
import '../../../../../core/data/models/reminder_categories.dart';

/// Reminder category page button.
class CategoryButton extends StatelessWidget {
  /// The current reminder category.
  final ReminderCategory category;

  /// The top right corner count value.
  final int count;

  /// Call on tap the widget.
  final VoidCallback onTap;

  const CategoryButton({
    required this.category,
    required this.count,
    required this.onTap,
    super.key,
  });

  static const _iconSize = 22.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          borderRadius: AppRadius.radius12,
          boxShadow: AppShadows.defaultShadow,
          color: AppColors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 10, 20, 6),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox.square(
                    dimension: 32,
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
                  Text('$count', style: AppTypo.bold25),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                category.name,
                style: AppTypo.semibold16.copyWith(
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
