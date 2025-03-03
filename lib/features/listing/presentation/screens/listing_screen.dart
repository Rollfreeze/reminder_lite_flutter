import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import '../../../../core/services/localization_service.dart';
import '../../../../core/style/app_colors.dart';
import '../widgets/reminder_listing_item.dart';

@RoutePage()
class ListingScreen extends StatefulWidget {
  const ListingScreen({super.key});

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

  Color get _titleColor => _isTitleCollapsed ? AppColors.black : AppColors.blue;

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
      child: CustomScrollView(
        controller: _controller,
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text(
              LocalizationService.locale.today,
              style: TextStyle(color: _titleColor),
            ),
          ),
          const SliverToBoxAdapter(child: separator),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 40),
            sliver: SliverList.separated(
              itemCount: 10,
              separatorBuilder: (_, __) => separator,
              itemBuilder: (_, index) => Padding(
                padding: const EdgeInsets.fromLTRB(4, 8, 18, 8),
                child: ReminderListingItem(
                  isFinished: index % 2 == 0,
                  onChanged: (value) {},
                  isRepetitive: index % 3 == 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
