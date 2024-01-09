import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/features/profile/presentation/widget/pop_up.dart';
import 'package:construction_app/src/features/profile/presentation/widget/user_info.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.goNamed(AppRoutes.DashboardScreen.name);
          },
        ),
        title: const Text(
          'Mein Konto',
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 16,
            fontWeight: FontWeight.w600,

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
      body: Column(
        children: [
         
          SizedBox(height: AppSizer.getHeight(context, 22)),
          Center(
            child: Container(
              width: AppSizer.getWidth(context, 92),
              height: AppSizer.getWidth(context, 92),
              decoration: const ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/profile_image.jpg"),
                  fit: BoxFit.fill,
                ),
                shape: OvalBorder(),
              ),
            ),
          ),
          const Center(
            child: Text(
              'Micheal Jean',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: AppSizer.getHeight(context, 2)),
          Padding(
            padding: EdgeInsets.only(
                left: 50, right: AppSizer.getWidth(context, 50)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'CEO Apha Construct',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: AppSizer.getWidth(context, 70)),
                    SvgPicture.asset(
                      "assets/icons/edit-2.svg",
                      width: AppSizer.getWidth(context, 18),
                      height: AppSizer.getWidth(context, 18),
                    ),
                  ],
                ),
                SizedBox(height: AppSizer.getHeight(context, 40)),
                const UserInfo(
                  iconName: 'mail.svg',
                  label: 'email',
                  value: "Michjean@gmail.com",
                ),
                const UserInfo(
                  iconName: 'phone-forwarded.svg',
                  label: 'Telefonnummer',
                  value: "+220-3959-0094",
                ),
                const UserInfo(
                  iconName: 'briefcase.svg',
                  label: 'Projekte',
                  value: "27 Projekte",
                ),
                const UserInfo(
                  iconName: 'lock.svg',
                  label: 'Kennwort ändern',
                  value: "****************",
                ),
                const UserInfo(
                  iconName: 'aperture.svg',
                  label: 'Sprache ändern',
                  value: "Englisch",
                ),
                UserInfo(
                  iconName: 'wpf_renew-subscription.svg',
                  label: 'Abo-Verwaltung',
                  value: "Plan ansehen",
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const DialogContainer();
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
