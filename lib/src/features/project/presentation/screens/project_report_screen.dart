import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/features/project/presentation/widgets/document_card.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ProjectReportScreen extends HookWidget {
  ProjectReportScreen({super.key});
  final List<Map<String, dynamic>> items = [
    {
      "name": 'Item 1',
      "time": "Erstellt am 4.9.2023, 10:45:11",
    },
    {
      "name": 'Item 2',
      "time": "Erstellt am 4.9.2023, 10:45:11",
    },
    {
      "name": 'Item 3',
      "time": "Erstellt am 4.9.2023, 10:45:11",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppSizer.getHeight(context, 30)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back),
                  Text(
                    'Dokumente',
                    style: TextStyle(
                      color: Color(0xFF041675),
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  Icon(Icons.more_horiz),
                ],
              ),
              SizedBox(height: AppSizer.getHeight(context, 20)),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
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
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.search),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search', // Hint text aligned to the right
                          hintStyle: TextStyle(),
                          border: InputBorder.none,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppSizer.getHeight(context, 20)),
              const Text(
                'Alle Dateien (2)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              SizedBox(height: AppSizer.getHeight(context, 15)),
              Container(
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
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 30,
                    bottom: 80,
                    top: 20,
                  ),
                  child: Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: items.length,
                        itemBuilder: (BuildContext context, int index) {
                          final doc = items[index];
                          return DocumentCard(doc: doc);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RawMaterialButton(
                    onPressed: () {},
                    shape: const CircleBorder(),
                    fillColor: AppColors.primary,
                    constraints: BoxConstraints(
                      minWidth: AppSizer.getWidth(context, 60),
                      minHeight: AppSizer.getHeight(context, 60),
                    ),
                    elevation: 0,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 52,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
