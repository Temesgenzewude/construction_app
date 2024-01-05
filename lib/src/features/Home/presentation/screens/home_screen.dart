// ignore_for_file: must_be_immutable

import 'package:construction_app/src/common_widgets/dots_widget.dart';
import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/features/Home/presentation/widgets/app_bar.dart';
import 'package:construction_app/src/features/Home/presentation/widgets/drawer_widget.dart';
import 'package:construction_app/src/features/Home/presentation/widgets/project_card.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected_widget = 0;
  PageController _controller = PageController();

  onSlide(int index) {
    setState(() {
      selected_widget = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        flexibleSpace: Padding(
          padding: EdgeInsets.only(top: AppSizer.getHeight(context, 45)),
          child: const HomeAppBarWidget(),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      drawer: DrawerWidget(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
              height: AppSizer.getHeight(context, 194),
              child: ListView.separated(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(
                                0.3), // Color to be used for the filter
                            BlendMode.darken, // Blend mode for the filter
                          ),
                          child: Image.asset(
                            'assets/images/building.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: AppSizer.getWidth(context, 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 2),
                              decoration: const BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(4),
                                  bottomRight: Radius.circular(4),
                                ),
                              ),
                              child: Text(
                                'E-Plaza warehouse',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: AppSizer.getHeight(context, 18),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 2),
                              decoration: const BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(4),
                                  bottomRight: Radius.circular(4),
                                ),
                              ),
                              child: Text(
                                'Construction',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: AppSizer.getHeight(context, 18),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: AppSizer.getHeight(context, 18),
                        left: AppSizer.getWidth(context, 6),
                        child: const Text(
                          'Construction Map',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: AppSizer.getHeight(context, 18),
                        right: AppSizer.getWidth(context, 20),
                        child: Icon(
                          Icons.file_download_outlined,
                          color: Colors.white,
                          size: AppSizer.getWidth(context, 25),
                        ),
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 10);
                },
                itemCount: 3,
              ),
            ),
          ),
          SizedBox(
            height: AppSizer.getHeight(context, 18),
          ),
          Center(
            child: DotsWidget(
              selectedIndex: 0,
              size: 20,
              totalDots: 3,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizer.getWidth(context, 30),
              vertical: AppSizer.getHeight(context, 30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Neues project',
                  style: TextStyle(
                    fontSize: AppSizer.getWidth(context, 18),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Erstellen Sie Ihr erstes Projekt, um \n Loszulegen',
                  style: TextStyle(
                    fontSize: AppSizer.getWidth(context, 14),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: AppSizer.getHeight(context, 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Andere Projekte',
                      style: TextStyle(
                        fontSize: AppSizer.getWidth(context, 16),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      onTap: () {},
                      child: const Text(
                        'Mehr sehen',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primary,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    ProjectCard(
                      projectTitle: 'Eisenbahnbau',
                      imageUrl: 'assets/images/project_picture_1.png',
                    ),
                    SizedBox(
                      width: AppSizer.getWidth(context, 10),
                    ),
                    ProjectCard(
                      projectTitle: 'Mall-Bau',
                      imageUrl: 'assets/images/project_picture_2.png',
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'HOme'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'HOme')
        ],
      ),
    );
  }
}
