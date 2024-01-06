import 'package:construction_app/src/routing/routing.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.projectTitle,
    required this.imageUrl,
  });

  final String projectTitle;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
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
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppSizer.getHeight(context, 150),
            width: AppSizer.getWidth(context, 156),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizer.getWidth(context, 6),
              vertical: AppSizer.getHeight(context, 9),
            ),
            child: Text(
              projectTitle,
              style: TextStyle(
                color: Colors.black,
                fontSize: AppSizer.getWidth(context, 16),
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: AppSizer.getWidth(context, 6),
              bottom: AppSizer.getHeight(context, 12),
            ),
            child: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              onTap: () {
                context.go('/${AppRoutes.SampleProjectScreen.name}');
              },
              child: const Text(
                'Projekt ansehen',
                style: TextStyle(
                  color: Color(0xFF041675),
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
