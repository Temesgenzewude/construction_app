import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/features/groups/presentation/widgets/add_button.dart';
import 'package:construction_app/src/features/groups/presentation/widgets/group_card.dart';
import 'package:construction_app/src/features/groups/presentation/widgets/search_bar.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GroupsScreen extends StatelessWidget {
  GroupsScreen({super.key});
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const Text(
                    'Gruppen',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Icon(Icons.more_horiz),
                ],
              ),
              SizedBox(height: AppSizer.getHeight(context, 25)),
              //! SEARCH FIELD
              const CustomSearchBar(),
              SizedBox(height: AppSizer.getHeight(context, 20)),
              Text(
                'Alle Gruppen (${items.length})',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: AppSizer.getHeight(context, 20)),
              Wrap(
                spacing: AppSizer.getWidth(context, 16),
                children: const [
                  GroupCard(
                    imageName: 'group-1.png',
                    title: 'AutoCad-Team',
                    description: 'Mitglieder: 4',
                  ),
                  GroupCard(
                    imageName: 'group-2.png',
                    title: 'Client-Management',
                    description: 'Mitglieder: 2',
                  ),
                ],
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
