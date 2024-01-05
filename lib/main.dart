
import 'package:construction_app/src/routing/main_router.dart';

import 'package:construction_app/src/features/Home/presentation/screens/home_screen.dart';
import 'package:construction_app/src/features/project/presentation/screens/create_project_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return const MainRouter();

  }
}
