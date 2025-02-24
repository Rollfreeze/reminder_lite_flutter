import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/bloc/progress_bloc/progress_bloc.dart';
import '../../../../../core/data/models/reminder_category.dart';
import 'progress_switch_row.dart';
import 'progress_slider.dart';

/// A section that contains all the control logic for working with progress of each category.
class ProgressSection extends StatefulWidget {
  const ProgressSection({super.key});

  @override
  State<ProgressSection> createState() => _ProgressSectionState();
}

class _ProgressSectionState extends State<ProgressSection> with TickerProviderStateMixin {
  final _controller = PageController();
  late final TabController _tabController;
  late final ProgressBloc _bloc;
  int? _desirePage;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _bloc = context.read<ProgressBloc>();
  }

  @override
  void dispose() {
    _controller.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProgressBloc, ProgressState>(
      builder: (_, state) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ProgressSwitchRow(
            selectedCategory: state.category,
            onTodayPressed: () => _animateToPage(0),
            onForMonthPressed: () => _animateToPage(1),
            onAllPressed: () => _animateToPage(2),
          ),
          const SizedBox(height: 18),
          ProgressSlider(
            items: state.items,
            controller: _controller,
            onPageChanged: _onPageChanged,
            tabController: _tabController,
          ),
        ],
      ),
    );
  }

  void _onPageSelect(int index) {
    _tabController.index = index;
    return switch (index) {
      0 => _bloc.add(const ProgressEvent.selectedCategory(ReminderCategory.today)),
      1 => _bloc.add(const ProgressEvent.selectedCategory(ReminderCategory.month)),
      2 => _bloc.add(const ProgressEvent.selectedCategory(ReminderCategory.all)),
      _ => null,
    };
  }

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
