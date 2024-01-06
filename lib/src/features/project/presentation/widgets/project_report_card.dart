import 'package:construction_app/src/routing/routing.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class ProjectReportCard extends StatelessWidget {
  const ProjectReportCard({
    super.key,
    required this.doc,
  });

  final Map<String, dynamic> doc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.goNamed(AppRoutes.DailyReportScreen.name);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  "assets/icons/edit.svg",
                  width: 23,
                  height: 23,
                ),
                SizedBox(width: AppSizer.getWidth(context, 12)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doc["name"],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      doc["title"],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      doc["report"],
                      style: const TextStyle(
                        color: Color(0xFF6D6868),
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Text(
              doc["time"],
              style: const TextStyle(
                color: Color(0xFF6D6868),
                fontSize: 12,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
