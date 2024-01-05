import 'package:construction_app/src/features/Home/presentation/widgets/drawer_setting.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List settings = [
      [
        const Icon(
          Icons.person_outline,
        ),
        'Mein Konto',
        () {}
      ],
      [
        const Icon(
          Icons.notifications_none,
        ),
        'Benachrichtigung',
        () {}
      ],
      [
        const Icon(
          Icons.help_outline,
        ),
        'Unterstützung',
        () {
          context.go('/${AppRoutes.HelpScreen.name}');
        }
      ],
      [
        const Icon(
          Icons.settings,
        ),
        'Einstellungen',
        () {}
      ],
      [
        const Icon(
          Icons.book,
        ),
        'Datenschutzrichtlinie',
        () {}
      ],
      [
        const Icon(
          Icons.logout,
        ),
        'Datenschutzrichtlinie',
        () {}
      ],
    ];
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
      ),
      // width: AppSizer.getWidth(context, 245),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 11.0,
              top: AppSizer.getHeight(context, 50),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/profile_image.jpg',
              ),
            ),
          ),
          const Text(
            'Micheal Jean',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text(
            'CEO Apha Construct',
            style: TextStyle(
              fontSize: 10,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: AppSizer.getWidth(context, 50),
            ),
            child: Column(
              children: List.generate(
                6,
                (index) => Column(
                  children: [
                    DrawerSetting(
                      icon: settings[index][0],
                      text: settings[index][1],
                      onTap: settings[index][2],
                    ),
                    const SizedBox(
                      height: 14,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
