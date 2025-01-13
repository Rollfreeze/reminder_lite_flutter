import 'package:flutter/cupertino.dart';
import 'package:reminder_lite/core/style/app_typo.dart';

class ReminderListingItem extends StatelessWidget {
  const ReminderListingItem({super.key});

  static const _lorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In mollis sodales dictum. Quisque aliquam ultrices odio id convallis. Aliquam erat volutpat. Maecenas lobortis ante vitae consequat hendrerit. Phasellus eget turpis vitae purus dignissim auctor ut vel diam. Proin nec lacinia justo, id rhoncus risus. Phasellus luctus neque eu libero commodo fermentum. Etiam a massa massa. Suspendisse vulputate ipsum diam. Vestibulum eget erat eu nisi malesuada dapibus. Pellentesque vel suscipit neque. Duis et elementum leo, ut cursus neque. Nunc quis aliquam turpis. Proin convallis tristique imperdiet. Duis sodales pellentesque mauris bibendum mattis. Sed rutrum purus sed ex pulvinar porttitor.";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 5,
      children: [
        Row(
          children: [
            Flexible(
              child: Text(
                'Reminder Title',
                style: AppTypo.bold17,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              child: Text(
                _lorem,
                style: AppTypo.medium17,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
