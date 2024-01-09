import 'package:construction_app/src/common_widgets/search_bar.dart';
import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProjectsScreen extends StatelessWidget {
  ProjectsScreen({super.key});

  final List<Map<String, dynamic>> cardItems = [
    {
      'text': 'Projektdetail azeigen',
      'path': AppRoutes.DocumentsScreen.name,
    },
    {
      'text': 'Projectberchte',
      'path': AppRoutes.ProjectReportScreen.name,
    },
    {
      'text': 'Bauzeitenplan',
      'path': AppRoutes.ConstructionScheduleScreen.name,
    },
    {
      'text': 'Dokumente',
      'path': AppRoutes.DocumentsScreen.name,
    },
    {
      'text': 'Kalender',
      'path': null,
    },
    {
      'text': 'Mangel',
      'path': AppRoutes.MangelScreen.name,
    },
    {
      'text': 'Beteiligte',
      'path': AppRoutes.MangelScreen.name,
    },
    {
      'text': 'Bilder',
      'path': AppRoutes.MangelScreen.name,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back),
        //   onPressed: () {
        //     context.pop();
        //   },
        // ),
        title: const Text(
          'Projekts',
          style: TextStyle(
            color: Color(0xFF041675),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: AppSizer.getWidth(
                context,
                39,
              ),
            ),
            child: const Icon(
              Icons.more_horiz,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizer.getWidth(context, 39),
            vertical: AppSizer.getHeight(context, 10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchBarWidget(),
              SizedBox(
                height: AppSizer.getHeight(context, 20),
              ),
              const Text(
                'Kachelen',
                style: TextStyle(
                  color: Color(0xFF041675),
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                // width: 316,
                // height: AppSizer.getHeight(context, 275),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
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
                child: Column(
                  children: List.generate(
                    cardItems.length ~/ 2,
                    (index) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          cardText: cardItems[index * 2]['text'],
                          onTap: () =>
                              context.pushNamed(cardItems[index * 2]['path']),
                        ),
                        Card(
                          cardText: cardItems[index * 2 + 1]['text'],
                          onTap: () => context
                              .pushNamed(cardItems[index * 2 + 1]['path']),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 45),
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
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
                child: Column(
                  children: List.generate(
                    4,
                    (index) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          cardText: cardItems[index * 2]['text'],
                          onTap: () =>
                              context.pushNamed(cardItems[index * 2]['path']),
                        ),
                        Card(
                          cardText: cardItems[index * 2 + 1]['text'],
                          onTap: () => context
                              .pushNamed(cardItems[index * 2 + 1]['path']),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 30),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    shape: const CircleBorder(),
                    backgroundColor: Colors.white,
                    elevation: 0,
                    child: const Icon(
                      Icons.add_circle_rounded,
                      color: AppColors.primary,
                      size: 63,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(

      // ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    super.key,
    required this.cardText,
    required this.onTap,
  });

  final String cardText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 4.5,
        vertical: 9,
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: AppSizer.getWidth(context, 143),
          height: 50,
          padding: const EdgeInsets.symmetric(
              // horizontal: 10,
              // vertical: 12,
              ),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
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
          child: Center(
            child: Text(
              cardText,
              overflow: TextOverflow.ellipsis, // Set overflow behavior
              maxLines: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
