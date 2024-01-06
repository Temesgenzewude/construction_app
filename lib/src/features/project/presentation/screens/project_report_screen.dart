import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/features/project/presentation/widgets/add_button.dart';
import 'package:construction_app/src/features/project/presentation/widgets/project_report_card.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';


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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppSizer.getHeight(context, 30)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back),
                  Text(
                    'Projektberichte',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(Icons.more_horiz),
                ],
              ),
              SizedBox(height: AppSizer.getHeight(context, 25)),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 2,
                      offset: Offset(1, 1),
                      spreadRadius: 0,
                    ),
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 2,
                      offset: Offset(-1, -1),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Suchen',
                      hintStyle: TextStyle(),
                      border: InputBorder.none,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
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
