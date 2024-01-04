import 'package:construction_app/src/common_widgets/custom_text_field.dart';
import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
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
              const SearchBar(),
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
                    4,
                    (index) => const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(),
                        Card(),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 45),
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
                    4,
                    (index) => const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(),
                        Card(),
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
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 4.5,
        vertical: 9,
      ),
      child: Container(
        width: AppSizer.getWidth(context, 143),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 12,
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
        child: const Text(
          'Projektdetail azeigen',
          overflow: TextOverflow.ellipsis, // Set overflow behavior
          maxLines: 2,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
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
      width: double.infinity,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.search),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                isDense: true,
              ),
            ),
          ),
          Text('Suchen')
        ],
      ),
    );
  }
}
