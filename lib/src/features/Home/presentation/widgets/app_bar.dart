import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/features/Home/presentation/widgets/notification_icon.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          'bView',
          style: TextStyle(
            fontSize: AppSizer.getWidth(context, 18),
            color: AppColors.primary,
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: AppSizer.getWidth(context, 34),
            right: AppSizer.getWidth(context, 40),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: AppSizer.getWidth(context, 18),
                    ),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/profile_image.jpg',
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Micheal Jean',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'CEO Apha Construct',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.symmetric(horizontal: 5.5),
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
                    child: const Icon(
                      Icons.search,
                    ),
                  ),
                  const NotificationIcon(),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
