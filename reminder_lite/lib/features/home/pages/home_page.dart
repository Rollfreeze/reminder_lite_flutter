import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/features/home/domain/bloc/progress_bloc/progress_bloc.dart';
import 'package:reminder_lite/features/home/domain/models/reminder_categories.dart';
import 'package:reminder_lite/features/home/widgets/categories_section/categories_section.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/progress_section.dart';

/// This is a home page with all reminder groups.
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.gray6,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: AppColors.gray6,
        border: Border(),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              const SizedBox(height: 10),
              const CupertinoSearchTextField(),
              const SizedBox(height: 25),
              const CategoriesSection(),
              const SizedBox(height: 25),
              BlocBuilder<ProgressBloc, ProgressState>(
                builder: (_, state) {
                  final bloc = context.read<ProgressBloc>();
                  return ProgressSection(
                    onTodayPressed: () => bloc.add(ProgressEvent.selectedCategory(TodayCategory())),
                    onForMonthPressed: () => bloc.add(ProgressEvent.selectedCategory(ForMonthCategory())),
                    onAllPressed: () => bloc.add(ProgressEvent.selectedCategory(AllCategory())),
                    selectedCategory: state.category,
                    items: state.items,
                    controller: _controller,
                    onPageChanged: (index) => switch (index) {
                      0 => bloc.add(ProgressEvent.selectedCategory(TodayCategory())),
                      1 => bloc.add(ProgressEvent.selectedCategory(ForMonthCategory())),
                      2 => bloc.add(ProgressEvent.selectedCategory(AllCategory())),
                      _ => null,
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
