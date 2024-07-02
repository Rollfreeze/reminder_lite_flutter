import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/categories_slider.dart';

/// A model for [CategoriesSlider].
class SliderActionModel {
  final String name;
  final Color color;
  final VoidCallback onPressed;

  const SliderActionModel({
    required this.name,
    required this.color,
    required this.onPressed,
  });
}
