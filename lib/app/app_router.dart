import 'package:emptyproject/ui/splash/splash_page.dart';
import 'package:go_router/go_router.dart';

import '../ui/home/home_page.dart';

/// We're using flutter team's official navigation package named go_router
///
/// https://gorouter.dev/
///
/// You can check the documentation to learn how to navigate!
///
/// Example: context.push(Routes.login);
///
/// without context: Routes.router.push(Routes.login);
class Routes {
  /// Gets current context globally from navigator;
  /// Giving names to the routes to prevent hardcoding while routing
  static const splash = '/';
  static const home = '/home';

  /// After we create the page and path, you can add the route to the navigator
  static final router = GoRouter(routes: <GoRoute>[
    GoRoute(
      path: splash,
      builder: (_, __) => const SplashPage(),
    ),
    GoRoute(
      path: home,
      builder: (_, __) => const HomePage(),
    ),

    // GoRoute(
    //   path: edit,
    //   builder: (_, state) => EditPage(
    //     id: (state.extra as Map)["id"].toString(),
    //   ),
    // ),
  ]);
}
