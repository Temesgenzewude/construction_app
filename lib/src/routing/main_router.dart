import 'package:construction_app/src/common_widgets/404_page.dart';
import 'package:construction_app/src/features/Home/presentation/screens/home_screen.dart';
import 'package:construction_app/src/features/authentication/presentation/screens/login_screen.dart';
import 'package:construction_app/src/features/authentication/presentation/screens/premium_plan_screen.dart';
import 'package:construction_app/src/features/authentication/presentation/screens/signup_first_screen.dart';
import 'package:construction_app/src/features/authentication/presentation/screens/signup_second_screen.dart';
import 'package:construction_app/src/features/dashboard/presentation/screens/dashboard.dart';
import 'package:construction_app/src/features/groups/presentation/screens/add_group_screen.dart';
import 'package:construction_app/src/features/groups/presentation/screens/groups_screen.dart';
import 'package:construction_app/src/features/help/presentation/screens/help_screen.dart';
import 'package:construction_app/src/features/notification/presentation/screen/notification_screen.dart';
import 'package:construction_app/src/features/onboarding/presentation/screens/begin_screen.dart';
import 'package:construction_app/src/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:construction_app/src/features/onboarding/presentation/screens/splash_screen.dart';
import 'package:construction_app/src/features/project/presentation/screens/mangel_bearbeiten_screen.dart';
import 'package:construction_app/src/features/project/presentation/screens/mangel_screen.dart';
import 'package:construction_app/src/features/profile/presentation/screen/profile_screen.dart';
import 'package:construction_app/src/features/project/presentation/screens/daily_report_screen.dart';

import 'package:construction_app/src/features/project/presentation/screens/project_report_screen.dart';

import 'package:construction_app/src/features/project/presentation/screens/construction_plan_screen.dart';
import 'package:construction_app/src/features/project/presentation/screens/construction_schedule_screen.dart';
import 'package:construction_app/src/features/project/presentation/screens/create_project_screen.dart';
import 'package:construction_app/src/features/project/presentation/screens/documents_screen.dart';
import 'package:construction_app/src/features/project/presentation/screens/projects_screen.dart';
import 'package:construction_app/src/features/project/presentation/screens/sample_project_screen.dart';

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
      initialLocation: '/${AppRoutes.NotificationScreen.name}',
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
          pageBuilder: (context, state) =>
              buildCustomTransitionForPage(context, state, const BeginScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.OnBoardingScreen.name}',
          name: AppRoutes.OnBoardingScreen.name,
          pageBuilder: (context, state) =>
              buildCustomTransitionForPage(context, state, OnboardingScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.LoginScreen.name}',
          name: AppRoutes.LoginScreen.name,
          pageBuilder: (context, state) =>
              buildCustomTransitionForPage(context, state, const LoginScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.SignupFirstScreen.name}',
          name: AppRoutes.SignupFirstScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state, const SignupFirstScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.SignupSecondScreen.name}',
          name: AppRoutes.SignupSecondScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state, SignupSecondScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.PremiumPlanScreen.name}',
          name: AppRoutes.PremiumPlanScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state, const PremiumPlanScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.HomeScreen.name}',
          name: AppRoutes.HomeScreen.name,
          pageBuilder: (context, state) =>
              buildCustomTransitionForPage(context, state, const HomeScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.HelpScreen.name}',
          name: AppRoutes.HelpScreen.name,
          pageBuilder: (context, state) =>
              buildCustomTransitionForPage(context, state, const HelpScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.CreateProjectScreen.name}',
          name: AppRoutes.CreateProjectScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state, const CreateProjectScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.ProjectsScreen.name}',
          name: AppRoutes.ProjectsScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state, const ProjectsScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.SampleProjectScreen.name}',
          name: AppRoutes.SampleProjectScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state, const SampleProjectScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.ProjectReportScreen.name}',
          name: AppRoutes.ProjectReportScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state, ProjectReportScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.DailyReportScreen.name}',
          name: AppRoutes.DailyReportScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state, const DailyReportScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.DocumentsScreen.name}',
          name: AppRoutes.DocumentsScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
              context, state, const DocumentsScreen()),
        ),
        GoRoute(
          path: '/${AppRoutes.ConstructionScheduleScreen.name}',
          name: AppRoutes.ConstructionScheduleScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
            context,
            state,
            const ConstructionScheduleScreen(),
          ),
        ),
        GoRoute(
          path: '/${AppRoutes.ConstructionPlanScreen.name}',
          name: AppRoutes.ConstructionPlanScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
            context,
            state,
            const ConstructionPlanScreen(),
          ),
        ),
        GoRoute(
          path: '/${AppRoutes.DashboardScreen.name}',
          name: AppRoutes.DashboardScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
            context,
            state,
            const DashboardScreen(),
          ),
        ),
        GoRoute(
          path: '/${AppRoutes.MangelScreen.name}',
          name: AppRoutes.MangelScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
            context,
            state,
            const MangelScreen(),
          ),
        ),
        GoRoute(
          path: '/${AppRoutes.MangelBearbeitenScreen.name}',
          name: AppRoutes.MangelBearbeitenScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
            context,
            state,
            const MangelBearbeitenScreen(),
          ),
        ),
        GoRoute(
          path: '/${AppRoutes.ProfileScreen.name}',
          name: AppRoutes.ProfileScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
            context,
            state,
            const ProfileScreen(),
          ),
        ),
        GoRoute(
          path: '/${AppRoutes.NotificationScreen.name}',
          name: AppRoutes.NotificationScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
            context,
            state,
            NotificationScreen(),
          ),
        ),
        GoRoute(
          path: '/${AppRoutes.GroupsScreen.name}',
          name: AppRoutes.GroupsScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
            context,
            state,
            GroupsScreen(),
          ),
        ),
        GoRoute(
          path: '/${AppRoutes.AddGroupScreen.name}',
          name: AppRoutes.AddGroupScreen.name,
          pageBuilder: (context, state) => buildCustomTransitionForPage(
            context,
            state,
            AddGroupScreen(),
          ),
        ),
      ],
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: 'Construction Trading App',
      theme: ThemeData(fontFamily: 'Montserrat'),
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
