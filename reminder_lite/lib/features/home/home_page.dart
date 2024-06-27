import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

/// This is a home page with all reminder groups.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CupertinoButton(
            onPressed: () => context.go('/today'),
            child: const Text('Today'),
          ),
          CupertinoButton(
            onPressed: () => context.go('/month'),
            child: const Text('Month'),
          ),
          CupertinoButton(
            onPressed: () => context.go('/all'),
            child: const Text('All'),
          ),
          CupertinoButton(
            onPressed: () => context.go('/finished'),
            child: const Text('Finished'),
          ),
        ],
      ),
    );
  }
}
