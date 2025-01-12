abstract class Routes {
  static const AppRoute root = AppRoute('/', RouteNames.root);
  static const AppRoute setting = AppRoute('/setting', RouteNames.setting);
  static const AppRoute home = AppRoute('/home', RouteNames.home);
  static const AppRoute login = AppRoute('/login', RouteNames.login);
  static const AppRoute profile = AppRoute('/profile', RouteNames.profile);
}

class AppRoute {
  const AppRoute(
    this.path,
    this.name,
  );

  final String path;
  final RouteNames name;
}

enum RouteNames {
  home,
  root,
  setting,
  login,
  profile,
}
