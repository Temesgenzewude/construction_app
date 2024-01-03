import 'package:construction_app/src/common_widgets/404_page.dart';
import 'package:construction_app/src/features/onboarding/presentation/screens/auth_screen.dart';
import 'package:construction_app/src/features/authentication/presentation/login_screen.dart';
import 'package:construction_app/src/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:construction_app/src/features/authentication/presentation/signup_screen.dart';
import 'package:construction_app/src/features/onboarding/presentation/screens/splash_screen.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainRouter extends StatefulWidget {
  const MainRouter({super.key});

  @override
  State<MainRouter> createState() => _MainRouterState();
}

class _MainRouterState extends State<MainRouter> {
  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      errorPageBuilder: (context, state) {
        return PageNotFoundScreen();
      },
      initialLocation: '/${AppRoutes.SplashScreen.name}',
      routes: [
        GoRoute(
          path: '/${AppRoutes.SplashScreen.name}',
          name: AppRoutes.SplashScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state, const SplashScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.AuthScreen.name}',
          name: AppRoutes.AuthScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state, const AuthScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.OnBoardingScreen.name}',
          name: AppRoutes.OnBoardingScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state,  OnboardingScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.LoginScreen.name}',
          name: AppRoutes.LoginScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state,  const LoginScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.SignupScreen.name}',
          name: AppRoutes.SignupScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state,  const SignupScreen()),
        ),
      ],
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: 'Construction Trading App',
    );
  }

  CustomTransitionPage<dynamic> buildCustomTransitionForPage(
      BuildContext context, GoRouterState state, Widget page) {
    return CustomTransitionPage(
        key: state.pageKey,
        transitionDuration: const Duration(seconds: 0),
        child: page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: CurveTween(curve: Curves.easeInOut).animate(animation),
            child: child,
          );
        });
  }
}
