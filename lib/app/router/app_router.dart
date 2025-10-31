import 'package:go_router/go_router.dart';
import 'package:marketia/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(path: '/',builder: (context, state) => SplashView(),)
  ]);
}
