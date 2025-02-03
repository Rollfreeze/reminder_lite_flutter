import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/style/app_colors.dart';
import 'package:reminder_lite/core/style/app_typo.dart';

class ReminderListingItem extends StatelessWidget {
  /// Checkbox state.
  final bool isFinished;

  /// Change checkbox state.
  final ValueChanged<bool?> onChanged;

  /// Reminder repetition state.
  final bool isRepetitive;

  const ReminderListingItem({
    super.key,
    required this.isFinished,
    required this.onChanged,
    required this.isRepetitive,
  });

  static const _lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit.";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.3,
          child: CupertinoCheckbox(
            value: isFinished,
            onChanged: onChanged,
          ),
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 2,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Expanded(child: Text('Reminder Title', style: AppTypo.bold19)),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 8,
                    children: [
                      if (isRepetitive)
                        Icon(
                          size: 20,
                          CupertinoIcons.repeat,
                          color: AppColors.text3,
                        ),
                      Text('20:01', style: AppTypo.medium17hint),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(_lorem * 2, style: AppTypo.medium17),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
