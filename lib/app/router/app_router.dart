import 'package:go_router/go_router.dart';
import 'package:marketia/presentation/views/home_view.dart';
import 'package:marketia/presentation/views/onboarding_view.dart';
import 'package:marketia/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kOnboardingViewm = "/OnboardingView";
  static const kHomeView = "/HomeView";

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(
        path: kOnboardingViewm,
        builder: (context, state) => OnboardingView(),
      ),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
    ],
  );
}
