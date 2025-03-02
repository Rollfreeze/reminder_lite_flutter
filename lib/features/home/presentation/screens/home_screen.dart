import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/services/reminder_bloc/reminder_bloc.dart';
import '../../../../core/style/app_colors.dart';
import '../widgets/add_reminder_button.dart';
import '../widgets/categories_section/categories_section.dart';
import '../widgets/progress_section/progress_section.dart';

/// This is a home page with all reminder groups.
@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = ScrollController();
  bool _isBottomContainerVisible = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_bottomOpacityHandler);
  }

  @override
  void dispose() {
    _controller.removeListener(_bottomOpacityHandler);
    _controller.dispose();
    super.dispose();
  }

  void _bottomOpacityHandler() {
    const visibilityOffset = -80.0;

    final isVisible = _controller.offset < visibilityOffset;
    final shouldMakeVisible = isVisible != _isBottomContainerVisible;

    if (shouldMakeVisible) setState(() => _isBottomContainerVisible = isVisible);
  }

  void _createNewReminder() => context.read<ReminderBloc>().add(const ReminderEvent.create());

  static const _containerBorder = Border.fromBorderSide(
    BorderSide(color: CupertinoColors.separator, width: 0.5),
  );

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.gray6,
      navigationBar: const CupertinoNavigationBar(border: _containerBorder),
      child: SafeArea(
        bottom: false,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ListView(
              controller: _controller,
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 18),
              children: [
                const CupertinoSearchTextField(),
                const SizedBox(height: 30),
                const CategoriesSection(),
                const SizedBox(height: 25),
                const ProgressSection(),
              ],
            ),
            SizedBox(
              height: 86,
              child: Stack(
                children: [
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 150),
                    opacity: _isBottomContainerVisible ? 1 : 0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: CupertinoTheme.of(context).barBackgroundColor,
                        border: _containerBorder,
                      ),
                      child: const SizedBox.expand(),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 12,
                    child: AddReminderButton(onPressed: _createNewReminder),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
