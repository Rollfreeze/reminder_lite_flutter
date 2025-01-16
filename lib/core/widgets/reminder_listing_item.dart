import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/style/app_typo.dart';

class ReminderListingItem extends StatelessWidget {
  const ReminderListingItem({super.key, required this.isFinished});
  final bool isFinished;

  static const _lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit.";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.3,
          child: CupertinoCheckbox(
            value: isFinished,
            onChanged: (value) {},
          ),
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 5,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Expanded(child: Text('Reminder Title', style: AppTypo.bold19)),
                  Text('20:01', style: AppTypo.medium17hint),
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
