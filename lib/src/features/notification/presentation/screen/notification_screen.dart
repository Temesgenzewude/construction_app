import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});
  final List<Map<String, dynamic>> items = [
    {
      "time": "Vor 25 Minuten",
      "description": "Sie haben 24 Stunden bis zum Ende des Projekts",
      "title": "Fliesenbefestigung",
    },
    {
      "time": "Vor 50 Minuten",
      "description": "Sie haben 24 Stunden bis zum Ende des Projekts",
      "title": "Fliesenbefestigung 2",
    },
    {
      "time": "vor 3 Tagen",
      "title": "Bautagesbericht",
      "description":
          "Herzlichen Glückwunsch, das Projekt Straßenbau wurde erfolgreich abgeschlossen.",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: AppSizer.getHeight(context, 30)),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.pop();
                    },
                    child: const Icon(Icons.arrow_back),
                  ),
                  SizedBox(width: AppSizer.getWidth(context, 60)),
                  const Text(
                    'Benachrichtigung',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: AppSizer.getHeight(context, 22)),
            Container(
              width: double.infinity,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 2,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xB7A6A3A3),
                  ),
                ),
              ),
            ),
            SizedBox(height: AppSizer.getHeight(context, 22)),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Alle Benachrichtigungen (${items.length})',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: AppSizer.getHeight(context, 12)),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.only(top: 12),
                    shrinkWrap: true,
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {
                      final doc = items[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: ShapeDecoration(
                            color: index == 0
                                ? const Color(0xA8E2F5E5)
                                : Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    doc["title"],
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    doc["time"],
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: AppSizer.getHeight(context, 5)),
                              Text(
                                doc["description"],
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
