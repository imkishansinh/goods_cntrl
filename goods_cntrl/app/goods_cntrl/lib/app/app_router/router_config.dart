import 'package:go_router/go_router.dart';
import 'package:goods_cntrl/utilities/global_var.dart';
import 'package:goods_cntrl/features/home/view/home_page.dart';
import 'package:goods_cntrl/features/landing/view/landing_page.dart';
import 'package:goods_cntrl/features/login/view/login_page.dart';
import 'package:goods_cntrl/features/login/view_model/login_viewmodel.dart';
import 'package:goods_cntrl/features/profile/profile_page.dart';
import 'package:goods_cntrl/features/profile/view_model/profile_viewmodel.dart';
import 'package:goods_cntrl/features/setting/view/setting_page.dart';
import 'package:goods_cntrl/router/routes.dart';

/// The route configuration.
final GoRouter routerConfig = GoRouter(
  initialLocation: Routes.root.path,
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    GoRoute(
      path: Routes.root.path,
      name: Routes.root.name.toString(),
      builder: (context, state) {
        return LandingPage();
      },
    ),
    GoRoute(
      path: Routes.login.path,
      name: Routes.login.name.toString(),
      builder: (context, state) {
        return LoginPage(viewModel: locator.get<LoginViewmodel>());
      },
    ),
    GoRoute(
      path: Routes.home.path,
      name: Routes.home.name.toString(),
      builder: (context, state) {
        return const HomePage();
      },
      routes: [
        GoRoute(
          path: Routes.setting.path,
          name: Routes.setting.name.toString(),
          builder: (context, state) {
            return SettingPage(viewModel: locator.get<LoginViewmodel>());
          },
          routes: [
            GoRoute(
              path: Routes.profile.path,
              name: Routes.profile.name.toString(),
              builder: (context, state) {
                return ProfilePage(viewModel: locator.get<ProfileViewmodel>());
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
