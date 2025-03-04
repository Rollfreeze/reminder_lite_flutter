import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/data/models/reminder_category.dart';
import '../../../../core/services/reminder_bloc/reminder_bloc.dart';
import '../../../../core/style/app_colors.dart';
import '../widgets/no_reminders_view.dart';
import '../widgets/reminder_listing_item.dart';

@RoutePage()
class ListingScreen extends StatefulWidget {
  final ReminderCategory category;

  const ListingScreen({required this.category, super.key});

  @override
  State<ListingScreen> createState() => _ListingScreenState();
}

class _ListingScreenState extends State<ListingScreen> {
  final _controller = ScrollController();
  bool _isTitleCollapsed = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_titleColorHandler);
  }

  @override
  void dispose() {
    _controller.removeListener(_titleColorHandler);
    _controller.dispose();
    super.dispose();
  }

  void _titleColorHandler() {
    const collapseOffset = 40.0;

    final isCollapsed = _controller.offset > collapseOffset;
    final shouldCollapse = isCollapsed != _isTitleCollapsed;

    if (shouldCollapse) setState(() => _isTitleCollapsed = isCollapsed);
  }

  Color get _titleColor => _isTitleCollapsed ? AppColors.black : widget.category.color;

  @override
  Widget build(BuildContext context) {
    const separator = Padding(
      padding: EdgeInsets.only(left: 18),
      child: ColoredBox(
        color: AppColors.gray1,
        child: SizedBox(height: .5, width: double.infinity),
      ),
    );

    return CupertinoPageScaffold(
      child: BlocBuilder<ReminderBloc, ReminderState>(
        builder: (_, state) {
          final group = state.reminders?.getBy(widget.category);
          return CustomScrollView(
            controller: _controller,
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: <Widget>[
              CupertinoSliverNavigationBar(
                largeTitle: Text(
                  widget.category.name,
                  style: TextStyle(color: _titleColor),
                ),
              ),
              const SliverToBoxAdapter(child: separator),
              if (group == null || group.reminders.isEmpty)
                const SliverFillRemaining(
                  child: NoRemindersView(),
                )
              else
                SliverPadding(
                  padding: const EdgeInsets.only(bottom: 40),
                  sliver: SliverList.separated(
                    itemCount: group.length,
                    separatorBuilder: (_, __) => separator,
                    itemBuilder: (_, index) => Padding(
                      padding: const EdgeInsets.fromLTRB(4, 8, 18, 8),
                      child: ReminderListingItem(
                        reminder: group.reminders[index],
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
