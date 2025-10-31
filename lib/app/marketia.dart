import 'package:flutter/material.dart';
import 'package:marketia/app/router/app_router.dart';

class Mareketia extends StatelessWidget {
  const Mareketia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
