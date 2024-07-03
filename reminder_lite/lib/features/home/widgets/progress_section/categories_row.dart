import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/services/localization_service.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/core/style/app_radius.dart';
import 'package:reminder_lite/core/style/app_shadows.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/categories_row_item.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/progress_section.dart';

/// A slider with categories to select for [ProgressSection].
class CategoriesRow extends StatelessWidget {
  const CategoriesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 59,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          borderRadius: AppRadius.radius12,
          color: AppColors.white,
          boxShadow: AppShadows.defaultShadow,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 9),
          child: Row(
            children: [
              Flexible(
                child: CategoriesRowItem(
                  name: LocalizationService.locale.today,
                  color: AppColors.blue,
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 14.5),
              Flexible(
                child: CategoriesRowItem(
                  name: LocalizationService.locale.forMonth,
                  color: AppColors.red,
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 14.5),
              Flexible(
                child: CategoriesRowItem(
                  name: LocalizationService.locale.all,
                  color: AppColors.black,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
