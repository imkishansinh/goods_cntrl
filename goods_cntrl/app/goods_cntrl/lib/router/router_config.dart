import 'package:go_router/go_router.dart';
import 'package:goods_cntrl/features/login/view/login_page.dart';
import 'package:goods_cntrl/features/profile/profile_page.dart';
import 'package:goods_cntrl/features/setting/view/setting_page.dart';
import 'package:provider/provider.dart';
import 'package:supabase_service/supabase_service.dart';

import '../features/home/view/home_page.dart';
import '../features/landing/view/landing_page.dart';
import '../features/profile/view_model/profile_viewmodel.dart';
import 'routes.dart';

/// The route configuration.
final GoRouter routerConfig = GoRouter(
  initialLocation: Routes.root.path,
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    GoRoute(
      path: Routes.root.path,
      name: Routes.root.name.toString(),
      builder: (context, state) {
        return LandingPage(
          viewModel: context.read(),
        );
      },
    ),
    GoRoute(
      path: Routes.login.path,
      name: Routes.login.name.toString(),
      builder: (context, state) {
        return LoginPage(
          viewModel: context.read(),
        );
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
            return SettingPage(
              viewModel: context.read(),
            );
          },
          routes: [
            GoRoute(
              path: Routes.profile.path,
              name: Routes.profile.name.toString(),
              builder: (context, state) {
                return Provider(
                  create: (context) => ProfileViewmodel(
                    supaService: context.read<SupabaseClass>(),
                  ),
                  child: ProfilePage(
                    viewModel: context.read(),
                  ),
                );
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
