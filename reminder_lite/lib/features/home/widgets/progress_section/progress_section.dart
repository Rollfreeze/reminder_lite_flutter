import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/services/localization_service.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/categories_slider.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/slider_action_model.dart';

/// A section with reminder categories progress on [HomePage].
class ProgressSection extends StatelessWidget {
  const ProgressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CategoriesSlider(
          elemets: [
            SliderActionModel(
              name: LocalizationService.locale.today,
              color: AppColors.blue,
              onPressed: () {},
            ),
            SliderActionModel(
              name: LocalizationService.locale.forMonth,
              color: AppColors.red,
              onPressed: () {},
            ),
            SliderActionModel(
              name: LocalizationService.locale.all,
              color: AppColors.black,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
