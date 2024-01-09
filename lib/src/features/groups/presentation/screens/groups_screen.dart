import 'package:construction_app/src/common_widgets/search_bar.dart';
import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/features/groups/presentation/widgets/add_button.dart';
import 'package:construction_app/src/features/groups/presentation/widgets/group_card.dart';
import 'package:construction_app/src/routing/routing.dart';
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
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.goNamed(AppRoutes.BeispielProjektScreen.name);
          },
        ),
        title: const Text(
          'Gruppen',
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: AppSizer.getWidth(context, 25)),
            child: const Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //! SEARCH FIELD
              const SearchBarWidget(),
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
                runSpacing: AppSizer.getWidth(context, 5),
                children: const [
                  GroupCard(
                    imageUrl: 'assets/images/group-1.png',
                    title: 'AutoCad-Team',
                    description: 'Mitglieder: 4',
                  ),
                  GroupCard(
                    imageUrl: 'assets/images/group-2.png',
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
