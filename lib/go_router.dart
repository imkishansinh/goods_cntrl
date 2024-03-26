import 'package:go_router/go_router.dart';

import 'components_page.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const ComponentsPage(),
    ),
  ],
);
