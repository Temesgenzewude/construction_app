import 'package:construction_app/src/features/Home/presentation/screens/home_screen.dart';
import 'package:construction_app/src/features/project/presentation/screens/create_project_screen.dart';
import 'package:construction_app/src/features/project/presentation/screens/projects_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DashboardScreen extends HookWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const HomeScreen(),
      const ProjectsScreen(),
      const CreateProjectScreen(),
      const Scaffold(
        body: Center(child: Text("Profile Screen")),
      )
    ];

    final selectedPageIndex = useState(0);

    return Scaffold(
      body: pages[selectedPageIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          selectedPageIndex.value = index;
        },
        currentIndex: selectedPageIndex.value,
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(115, 18, 17, 17),
        ),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedIconTheme:
            const IconThemeData(color: Color.fromARGB(115, 18, 17, 17)),
        iconSize: 25,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 25,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.folder_outlined,
                size: 25,
              ),
              label: 'Projekt'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline_outlined,
                size: 25,
              ),
              label: 'Neu'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
                size: 25,
              ),
              label: 'Profile')
        ],
      ),
    );
  }
}
