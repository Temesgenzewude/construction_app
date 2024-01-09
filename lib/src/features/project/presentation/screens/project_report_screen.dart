import 'package:construction_app/src/common_widgets/search_bar.dart';
import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/features/project/presentation/widgets/add_button.dart';
import 'package:construction_app/src/features/project/presentation/widgets/project_report_card.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProjectReportScreen extends StatelessWidget {
  ProjectReportScreen({super.key});
  final List<Map<String, dynamic>> items = [
    {
      "name": '2022-03-01 Bautagesbericht',
      "time": "01.03.2023",
      "report": "Bautagesbericht",
      "title": "Bent Campen",
    },
    {
      "name": '2022-03-01 Bautagesbericht',
      "time": "01.03.2023",
      "report": "Bautagesbericht",
      "title": "Bent Campen",
    },
    {
      "name": '2022-03-01 Bautagesbericht',
      "time": "01.03.2023",
      "report": "Bautagesbericht",
      "title": "Bent Campen",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.goNamed(AppRoutes.DashboardScreen.name);
          },
        ),
        title: const Text(
          'Projektberichte',
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: AppSizer.getWidth(context, 30)),
            child: const Icon(Icons.more_horiz),
          ),
        ],
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            height: 2,
            color: const Color.fromARGB(255, 167, 163, 163),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchBarWidget(),
              SizedBox(height: AppSizer.getHeight(context, 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Emtwurf',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '${items.length} Element',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.only(top: 12),
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  final doc = items[index];
                  return ProjectReportCard(doc: doc);
                },
              ),
              SizedBox(height: AppSizer.getHeight(context, 180)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AddButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
