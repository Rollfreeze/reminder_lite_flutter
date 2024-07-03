import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/categories_row.dart';

/// A section with reminder categories progress on [HomePage].
class ProgressSection extends StatelessWidget {
  const ProgressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CategoriesRow(),
      ],
    );
  }
}
