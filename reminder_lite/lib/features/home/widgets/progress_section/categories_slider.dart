import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/core/style/app_radius.dart';
import 'package:reminder_lite/core/style/app_shadows.dart';
import 'package:reminder_lite/core/style/app_typo.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/slider_action_model.dart';

/// A slider with categories to select.
class CategoriesSlider extends StatelessWidget {
  final List<SliderActionModel> elemets;

  const CategoriesSlider({super.key, required this.elemets});

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
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: elemets.length,
            separatorBuilder: (_, index) {
              return const SizedBox(width: 14.5);
            },
            itemBuilder: (_, index) {
              final element = elemets[index];
              return DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: AppRadius.radius8,
                  color: element.color,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: element.color.withOpacity(0.25),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Center(
                    child: Text(
                      element.name,
                      style: AppTypo.regular16.copyWith(color: AppColors.white),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
