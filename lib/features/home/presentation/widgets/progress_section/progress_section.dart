import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/services/reminder_bloc/reminder_bloc.dart';
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
  late final ReminderBloc _bloc;
  int? _desirePage;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _bloc = context.read<ReminderBloc>();
  }

  @override
  void dispose() {
    _controller.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReminderBloc, ReminderState>(
      builder: (_, state) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ProgressSwitchRow(
            selectedCategory: state.selectedCategory,
            onTodayPressed: () => _animateToPage(0),
            onForMonthPressed: () => _animateToPage(1),
            onAllPressed: () => _animateToPage(2),
          ),
          const SizedBox(height: 18),
          ProgressSlider(
            items: state.reminders?.groups ?? [],
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
      0 => _bloc.add(const ReminderEvent.selectedCategory(ReminderCategory.today)),
      1 => _bloc.add(const ReminderEvent.selectedCategory(ReminderCategory.month)),
      2 => _bloc.add(const ReminderEvent.selectedCategory(ReminderCategory.all)),
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
