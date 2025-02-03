import 'package:flutter/cupertino.dart';
import 'app_colors.dart';

/// App typography keep class.
abstract class AppTypo {
  static const semibold32 = TextStyle(
    color: AppColors.textDefault,
    fontWeight: FontWeight.w600,
    fontSize: 32,
    height: 22 / 32,
    letterSpacing: -0.4,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const semibold18 = TextStyle(
    color: AppColors.textDefault,
    fontWeight: FontWeight.w600,
    fontSize: 18,
    height: 22 / 18,
    letterSpacing: -0.4,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const semibold16 = TextStyle(
    color: AppColors.textDefault,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    height: 22 / 16,
    letterSpacing: -0.4,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const regular16 = TextStyle(
    color: AppColors.textDefault,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 22 / 16,
    letterSpacing: -0.4,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const regular17 = TextStyle(
    color: AppColors.textDefault,
    fontWeight: FontWeight.w400,
    fontSize: 17,
    height: 22 / 17,
    letterSpacing: -0.4,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const bold17 = TextStyle(
    color: AppColors.textDefault,
    fontWeight: FontWeight.w700,
    fontSize: 17,
    height: 22 / 17,
    letterSpacing: -0.4,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const bold19 = TextStyle(
    color: AppColors.textDefault,
    fontWeight: FontWeight.w700,
    fontSize: 19,
    height: 22 / 19,
    letterSpacing: -0.4,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const bold25 = TextStyle(
    color: AppColors.textDefault,
    fontWeight: FontWeight.w700,
    fontSize: 25,
    height: 25 / 22,
    letterSpacing: -0.4,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const medium17 = TextStyle(
    color: AppColors.textDefault,
    fontWeight: FontWeight.w500,
    fontSize: 17,
    height: 22 / 17,
    letterSpacing: -0.4,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const medium17hint = TextStyle(
    color: AppColors.text3,
    fontWeight: FontWeight.w500,
    fontSize: 17,
    height: 22 / 17,
    letterSpacing: -0.4,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const regular15 = TextStyle(
    color: AppColors.textDefault,
    fontWeight: FontWeight.w400,
    fontSize: 15,
    height: 22 / 15,
    letterSpacing: -0.4,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const semibold13 = TextStyle(
    color: AppColors.textDefault,
    fontWeight: FontWeight.w600,
    fontSize: 13,
    height: 22 / 13,
    letterSpacing: -0.4,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const regular10 = TextStyle(
    color: AppColors.textDefault,
    fontWeight: FontWeight.w400,
    fontSize: 10,
    height: 22 / 10,
    letterSpacing: -0.4,
    leadingDistribution: TextLeadingDistribution.even,
  );
}
