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
  Color _titleColor = AppColors.blue;

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
    if (_controller.offset > collapseOffset) {
      setState(() => _titleColor = AppColors.black); // Collapsed color
    } else {
      setState(() => _titleColor = AppColors.blue); // Expanded color
    }
  }

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
