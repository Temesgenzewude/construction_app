import 'package:construction_app/src/routing/routing.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConstructionScheduleScreen extends StatelessWidget {
  const ConstructionScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text(
          'Bauzeitenplan',
          style: TextStyle(
            color: Color(0xFF041675),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
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
          padding: EdgeInsets.symmetric(
            horizontal: AppSizer.getWidth(context, 39),
            vertical: AppSizer.getHeight(context, 20),
          ),
          child: Column(
            children: List.generate(
              7,
              (index) => Column(
                children: [
                  ScheduleCardWidget(
                    title: 'Allgemeine Vorbereitung',
                    completeStatus: '0',
                    startDate: '04.09.2023',
                    endDate: '02.10.2023',
                    onTap: () => context
                        .pushNamed(AppRoutes.ConstructionPlanScreen.name),
                  ),
                  SizedBox(
                    height: AppSizer.getHeight(
                      context,
                      18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ScheduleCardWidget extends StatelessWidget {
  const ScheduleCardWidget({
    super.key,
    required this.title,
    required this.completeStatus,
    required this.endDate,
    required this.startDate,
    this.onTap,
  });
  final String title;
  final String completeStatus;
  final String startDate;
  final String endDate;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        left: AppSizer.getWidth(context, 18),
        right: AppSizer.getWidth(context, 16),
        top: AppSizer.getWidth(context, 14),
        bottom: AppSizer.getWidth(context, 23),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$completeStatus% Abgeschlossen',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 10,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          SizedBox(
            height: AppSizer.getHeight(context, 13),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  const Text(
                    '0 Tickets . 3 untergeordnete Phasen',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: onTap,
                icon: const Icon(
                  Icons.navigate_next_outlined,
                ),
                splashRadius: 0.1,
              )
            ],
          ),
          SizedBox(
            height: AppSizer.getHeight(context, 10),
          ),
          Text(
            '$startDate – $endDate . 29 Tage',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 10,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          )
        ],
      ),
    );
  }
}
