import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/features/profile/presentation/widget/pop_up.dart';
import 'package:construction_app/src/features/profile/presentation/widget/user_info.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Column(
        children: [
          SizedBox(height: AppSizer.getHeight(context, 30)),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.arrow_back),
                ),
                SizedBox(width: AppSizer.getWidth(context, 90)),
                const Text(
                  'Mein Konto',
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
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Micheal Jean',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: AppSizer.getHeight(context, 5)),
                        const Text(
                          'CEO Apha Construct',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80.0),
                      child: SvgPicture.asset(
                        "assets/icons/edit-2.svg",
                        width: AppSizer.getWidth(context, 18),
                        height: AppSizer.getWidth(context, 18),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizer.getHeight(context, 50)),
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
