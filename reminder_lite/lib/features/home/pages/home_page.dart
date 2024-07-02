import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/features/home/widgets/categories_section.dart';

/// This is a home page with all reminder groups.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.gray6,
      navigationBar: const CupertinoNavigationBar(),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: const [
              SizedBox(height: 10),
              CupertinoSearchTextField(),
              SizedBox(height: 26),
              CategoriesSection(),
            ],
          ),
        ),
      ),
    );
  }
}
