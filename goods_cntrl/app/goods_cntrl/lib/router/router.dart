import 'package:go_router/go_router.dart';
import 'package:goods_cntrl/features/login/view/login_page.dart';
import 'package:goods_cntrl/features/setting/view/setting_page.dart';

import '../features/home/view/home_page.dart';
import '../features/landing/view/landing_page.dart';
import 'routes.dart';

/// The route configuration.
final GoRouter routerConfig = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: Routes.root,
      builder: (context, state) {
        return const LandingPage();
      },
      routes: [
        GoRoute(
          path: Routes.login,
          builder: (context, state) {
            return const LoginPage();
          },
        ),
        GoRoute(
          path: Routes.home,
          builder: (context, state) {
            return const HomePage();
          },
          routes: [
            GoRoute(
              path: Routes.setting,
              builder: (context, state) {
                return const SettingPage();
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
