import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/data/models/reminder_group.dart';

/// Di wrapper for [ListingScreen].
@RoutePage()
class ListingScreenWrapper extends AutoRouter implements AutoRouteWrapper {
  final ReminderGroup group;

  const ListingScreenWrapper({required this.group, super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}
