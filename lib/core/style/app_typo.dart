import 'package:flutter/cupertino.dart';
import 'app_colors.dart';

/// App typography keep class.
abstract class AppTypo {

  static const regular24 = TextStyle(
    fontSize: 24,
    height: 28 / 24,
    letterSpacing: -0.4,
    fontWeight: FontWeight.normal,
    color: AppColors.textDefault,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const regular22 = TextStyle(
    fontSize: 22,
    height: 26 / 22,
    letterSpacing: -0.4,
    fontWeight: FontWeight.normal,
    color: AppColors.textDefault,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const regular20 = TextStyle(
    fontSize: 20,
    height: 26 / 20,
    letterSpacing: -0.4,
    fontWeight: FontWeight.normal,
    color: AppColors.textDefault,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const regular16 = TextStyle(
    fontSize: 16,
    height: 22 / 16,
    letterSpacing: -0.4,
    fontWeight: FontWeight.normal,
    color: AppColors.textDefault,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const regular14 = TextStyle(
    fontSize: 14,
    height: 16 / 14,
    letterSpacing: -0.4,
    fontWeight: FontWeight.normal,
    color: AppColors.textDefault,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const regular12 = TextStyle(
    fontSize: 12,
    height: 16 / 12,
    letterSpacing: -0.4,
    fontWeight: FontWeight.normal,
    color: AppColors.textDefault,
    leadingDistribution: TextLeadingDistribution.even,
  );
}
