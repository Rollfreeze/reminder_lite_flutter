import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/services/localization_service.dart';
import 'package:reminder_lite/core/style/app_colors.dart';

@RoutePage()
class TodayScreen extends StatefulWidget {
  const TodayScreen({super.key});

  @override
  State<TodayScreen> createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {
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
    return CupertinoPageScaffold(
      child: CustomScrollView(
        controller: _controller,
        physics: AlwaysScrollableScrollPhysics(),
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text(
              LocalizationService.locale.today,
              style: TextStyle(color: _titleColor),
            ),
          ),
        ],
      ),
    );
  }
}
