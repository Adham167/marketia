import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:marketia/app/router/app_router.dart';
import 'package:marketia/core/constants/assets.dart';
import 'package:marketia/presentation/manager/splash_cubit/splash_cubit.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..getStarted(),
      child: Scaffold(
        body: BlocListener<SplashCubit, SplashState>(
          listener: (context, state) {
            if (state is UnAuthenticated) {
              GoRouter.of(context).pushReplacement(AppRouter.kOnboardingViewm);
            } else if (state is Authenticated) {
              GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
            }
          },
          child: TweenAnimationBuilder(
            tween: Tween(begin: 0.0, end: 1.0),
            duration: Duration(seconds: 2),
            curve: Curves.easeInOut,
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: Transform.scale(scale: value, child: child),
              );
            },
            child: Center(child: Image.asset(Assets.imagesLogoSplashScreen)),
          ),
        ),
      ),
    );
  }
}
