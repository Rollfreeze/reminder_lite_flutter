import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/data/models/reminder_category.dart';
import '../../../bloc/progress_bloc.dart';
import 'progress_switch_item.dart';
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
  bool ignorePageMooving = false;

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
        spacing: 18,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CupertinoSlidingSegmentedControl<ReminderCategory>(
            backgroundColor: CupertinoColors.white,
            thumbColor: state.selected.color,
            groupValue: state.selected,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            onValueChanged: (category) {
              _bloc.add(ProgressEvent.select(category!));
              _selectPageByCategory(category);
            },
            children: <ReminderCategory, Widget>{
              ReminderCategory.today: ProgressSwitchItem(
                category: ReminderCategory.today,
                isActive: state.selected == ReminderCategory.today,
              ),
              ReminderCategory.month: ProgressSwitchItem(
                category: ReminderCategory.month,
                isActive: state.selected == ReminderCategory.month,
              ),
              ReminderCategory.all: ProgressSwitchItem(
                category: ReminderCategory.all,
                isActive: state.selected == ReminderCategory.all,
              ),
            },
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            transitionBuilder: (child, animation) => FadeTransition(
              opacity: animation,
              child: child,
            ),
            child: state.reminders == null
                ? const SizedBox()
                : ProgressSlider(
                    reminders: state.reminders!,
                    controller: _controller,
                    tabController: _tabController,
                    onPageChanged: _onPageChanged,
                  ),
          ),
        ],
      ),
    );
  }

  void _onPageChanged(int index) {
    if (ignorePageMooving) return;
    if (_desirePage != null && index != _desirePage) return;
    if (_desirePage != null && _desirePage == index) {
      _desirePage = null;
      return;
    }
    _selectPageByIndex(index);
  }

  void _selectPageByIndex(int index) {
    _tabController.index = index;
    return switch (index) {
      0 => _bloc.add(const ProgressEvent.select(ReminderCategory.today)),
      1 => _bloc.add(const ProgressEvent.select(ReminderCategory.month)),
      2 => _bloc.add(const ProgressEvent.select(ReminderCategory.all)),
      _ => null,
    };
  }

  Future<void> _selectPageByCategory(ReminderCategory category) async {
    final page = switch (category) {
      ReminderCategory.today => 0,
      ReminderCategory.month => 1,
      ReminderCategory.all => 2,
      _ => _tabController.index,
    };
    ignorePageMooving = true;
    await _controller.animateToPage(
      page,
      curve: Curves.linear,
      duration: Durations.long2,
    );
    ignorePageMooving = false;
  }
}
