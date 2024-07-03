import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/core/style/app_radius.dart';
import 'package:reminder_lite/core/style/app_typo.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/categories_row.dart';

/// An item for [CategoriesRow].
class CategoriesRowItem extends StatelessWidget {
  final String name;
  final Color color;
  final VoidCallback onPressed;
  final bool isActive;

  const CategoriesRowItem({
    super.key,
    required this.name,
    required this.color,
    required this.onPressed,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: AppRadius.radius8,
        color: !isActive ? AppColors.white : color,
        boxShadow: !isActive
            ? null
            : [BoxShadow(blurRadius: 10, color: color.withOpacity(0.25))],
      ),
      child: Center(
        child: Text(
          name,
          style: AppTypo.semibold16
              .copyWith(color: !isActive ? AppColors.text3 : AppColors.white),
        ),
      ),
    );
  }
}
