import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_lite/features/home/domain/bloc/progress_bloc/progress_bloc.dart';
import 'package:reminder_lite/features/home/domain/models/reminder_categories.dart';
import 'package:reminder_lite/features/home/pages/home_page.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/categories_row.dart';
import 'package:reminder_lite/features/home/widgets/progress_section/progress_circle_section.dart';

/// A section with reminder categories progress on [HomePage].
class ProgressSection extends StatefulWidget {
  const ProgressSection({super.key});

  @override
  State<ProgressSection> createState() => _ProgressSectionState();
}

class _ProgressSectionState extends State<ProgressSection> {
  final _controller = PageController();
  late final ProgressBloc _bloc;
  int? _desirePage;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<ProgressBloc>();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProgressBloc, ProgressState>(
      builder: (_, state) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CategoriesRow(
            selectedCategory: state.category,
            onTodayPressed: () => _animateToPage(0),
            onForMonthPressed: () => _animateToPage(1),
            onAllPressed: () => _animateToPage(2),
          ),
          const SizedBox(height: 18),
          ProgressCircleSection(
            items: state.items,
            controller: _controller,
            onPageChanged: _onPageChanged,
          ),
        ],
      ),
    );
  }

  void _onPageSelect(int index) => switch (index) {
        0 => _bloc.add(ProgressEvent.selectedCategory(TodayCategory())),
        1 => _bloc.add(ProgressEvent.selectedCategory(ForMonthCategory())),
        2 => _bloc.add(ProgressEvent.selectedCategory(AllCategory())),
        _ => null,
      };

  void _animateToPage(int index) {
    if (index == _controller.page) return;
    _onPageSelect(index);
    _desirePage = index;
    _controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 750),
      curve: Curves.ease,
    );
  }

  void _onPageChanged(int index) {
    if (_desirePage != null && index != _desirePage) return;
    if (_desirePage != null && _desirePage == index) {
      _desirePage = null;
      return;
    }
    _onPageSelect(index);
  }
}
