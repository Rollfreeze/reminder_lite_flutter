import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/features/home/widgets/category_button.dart';

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
            children: [
              const SizedBox(height: 10),
              const CupertinoSearchTextField(),
              const SizedBox(height: 26),
              Row(
                children: [
                  Flexible(
                    child: CategoryButton.today(
                      count: 10,
                      onTap: () => context.go('/today'),
                    ),
                  ),
                  const SizedBox(width: 13),
                  Flexible(
                    child: CategoryButton.forMonth(
                      count: 20,
                      onTap: () => context.go('/month'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 13),
              Row(
                children: [
                  Flexible(
                    child: CategoryButton.all(
                      count: 30,
                      onTap: () => context.go('/all'),
                    ),
                  ),
                  const SizedBox(width: 13),
                  Flexible(
                    child: CategoryButton.done(
                      count: 40,
                      onTap: () => context.go('/done'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
