import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/services/localization_service.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/core/style/app_radius.dart';
import 'package:reminder_lite/core/style/app_shadows.dart';
import 'package:reminder_lite/core/style/app_typo.dart';

/// Reminder category page button.
class CategoryButton extends StatelessWidget {
  /// The top left corner icon.
  final Icon icon;

  /// The top left corner icon color.
  final Color iconBackgroubdColor;

  /// The top right corner count value.
  final int count;

  /// The bottom title.
  final String title;

  /// Call on tap the widget.
  final VoidCallback onTap;

  const CategoryButton({
    super.key,
    required this.iconBackgroubdColor,
    required this.icon,
    required this.count,
    required this.title,
    required this.onTap,
  });

  static const _iconSize = 12.0;

  CategoryButton.today({required this.count, required this.onTap, super.key})
      : icon = const Icon(
          CupertinoIcons.calendar_today,
          color: AppColors.white,
          size: _iconSize,
        ),
        iconBackgroubdColor = AppColors.blue,
        title = LocalizationService.locale.today;

  CategoryButton.forMonth({required this.count, required this.onTap, super.key})
      : icon = const Icon(
          CupertinoIcons.calendar,
          color: AppColors.white,
          size: _iconSize,
        ),
        iconBackgroubdColor = AppColors.red,
        title = LocalizationService.locale.forMonth;

  CategoryButton.all({required this.count, required this.onTap, super.key})
      : icon = const Icon(
          CupertinoIcons.cube_box,
          color: AppColors.white,
          size: _iconSize,
        ),
        iconBackgroubdColor = AppColors.black,
        title = LocalizationService.locale.all;

  CategoryButton.done({required this.count, required this.onTap, super.key})
      : icon = const Icon(
          CupertinoIcons.checkmark,
          color: AppColors.white,
          size: _iconSize,
        ),
        iconBackgroubdColor = AppColors.gray5,
        title = LocalizationService.locale.done;

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
                        color: iconBackgroubdColor,
                      ),
                      child: icon,
                    ),
                  ),
                  Text('$count', style: AppTypo.bold17),
                ],
              ),
              const SizedBox(height: 11),
              Text(
                title,
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
