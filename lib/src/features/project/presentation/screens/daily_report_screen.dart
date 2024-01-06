import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/features/project/presentation/widgets/check_box_container.dart';
import 'package:construction_app/src/features/project/presentation/widgets/input_filed.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class DailyReportScreen extends HookWidget {
  const DailyReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final trockenState = useState(false);
    final regenlState = useState(false);
    final schneefallState = useState(false);
    final wenigState = useState(false);
    final mittelState = useState(false);
    final starkOneState = useState(false);

    final windstilState = useState(false);
    final schwachState = useState(false);
    final starkTwoState = useState(false);
    final masigState = useState(false);
    final sturmischState = useState(false);

    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppSizer.getHeight(context, 30)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.goNamed(AppRoutes.ProjectReportScreen.name);
                    },
                    child: const Icon(Icons.arrow_back),
                  ),
                  SizedBox(width: AppSizer.getWidth(context, 70)),
                  const Text(
                    'Projektberichte',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSizer.getHeight(context, 22)),
              const Text(
                'Bautagesbericht',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: AppSizer.getHeight(context, 22)),

              //! INPUT FIELDS
              Wrap(
                spacing: AppSizer.getWidth(context, 10),
                runSpacing: AppSizer.getHeight(context, 10),
                direction: Axis.horizontal,
                children: [
                  InputFieldWithLable(
                    label: 'Berichts Nr',
                    controller: TextEditingController(),
                    width: AppSizer.getWidth(context, 45),
                    height: AppSizer.getHeight(context, 28),
                  ),
                  InputFieldWithLable(
                    label: 'Datum',
                    controller: TextEditingController(),
                    width: AppSizer.getWidth(context, 45),
                    height: AppSizer.getHeight(context, 28),
                  ),
                  InputFieldWithLable(
                    label: 'Uhrzeit',
                    controller: TextEditingController(),
                    width: AppSizer.getWidth(context, 45),
                    height: AppSizer.getHeight(context, 28),
                  ),
                ],
              ),
              SizedBox(height: AppSizer.getHeight(context, 22)),
              Wrap(
                spacing: AppSizer.getWidth(context, 30),
                runSpacing: AppSizer.getHeight(context, 10),
                children: [
                  InputFieldWithLable(
                    label: 'Projekt',
                    controller: TextEditingController(),
                    width: AppSizer.getWidth(context, 45),
                    height: AppSizer.getHeight(context, 30),
                  ),
                  InputFieldWithLable(
                    label: 'Firma',
                    controller: TextEditingController(),
                    width: AppSizer.getWidth(context, 45),
                    height: AppSizer.getHeight(context, 30),
                  ),
                ],
              ),
              SizedBox(height: AppSizer.getHeight(context, 22)),
              InputFieldWithLable(
                label: 'Adresse',
                controller: TextEditingController(),
                width: AppSizer.getWidth(context, 265),
                height: AppSizer.getHeight(context, 30),
              ),
              SizedBox(height: AppSizer.getHeight(context, 22)),
              const Text(
                'Wetter und Witterung',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: AppSizer.getHeight(context, 45)),
              Wrap(
                spacing: AppSizer.getWidth(context, 27),
                runSpacing: AppSizer.getHeight(context, 10),
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  const Text(
                    'Min',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  InputFieldContainer(
                    controller: TextEditingController(),
                    width: AppSizer.getWidth(context, 95),
                    height: AppSizer.getHeight(context, 30),
                  ),
                  const Text(
                    'Max',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  InputFieldContainer(
                    controller: TextEditingController(),
                    width: AppSizer.getWidth(context, 95),
                    height: AppSizer.getHeight(context, 30),
                  ),
                ],
              ),
              SizedBox(height: AppSizer.getHeight(context, 22)),
              //! CHECK BOX Witterung
              const Text(
                'Witterung',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: AppSizer.getHeight(context, 22)),
              CheckBoxContainer(label: 'Trocken', state: trockenState),
              SizedBox(height: AppSizer.getHeight(context, 22)),
              Wrap(
                spacing: AppSizer.getWidth(context, 66),
                runSpacing: AppSizer.getHeight(context, 10),
                children: [
                  CheckBoxContainer(label: 'Regen', state: regenlState),
                  CheckBoxContainer(
                      label: 'Schneefall', state: schneefallState),
                ],
              ),
              SizedBox(height: AppSizer.getHeight(context, 22)),
              Wrap(
                spacing: AppSizer.getWidth(context, 26),
                runSpacing: AppSizer.getHeight(context, 10),
                children: [
                  CheckBoxContainer(label: 'Wenig', state: wenigState),
                  CheckBoxContainer(
                    label: 'Mittel',
                    state: mittelState,
                  ),
                  CheckBoxContainer(
                    label: 'Stark',
                    state: starkOneState,
                  ),
                ],
              ),
              SizedBox(height: AppSizer.getHeight(context, 22)),

              //! CHECK BOX Windverhaltnisse
              const Text(
                'Windverhaltnisse',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: AppSizer.getHeight(context, 22)),

              const Text(
                'Wind',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: AppSizer.getHeight(context, 22)),
              Wrap(
                spacing: AppSizer.getWidth(context, 26),
                runSpacing: AppSizer.getHeight(context, 10),
                children: [
                  CheckBoxContainer(
                    label: 'Windstil',
                    state: windstilState,
                  ),
                  CheckBoxContainer(
                    label: 'Schwach',
                    state: schwachState,
                  ),
                  CheckBoxContainer(
                    label: 'Stark',
                    state: starkTwoState,
                  ),
                ],
              ),
              SizedBox(height: AppSizer.getHeight(context, 22)),

              Wrap(
                spacing: AppSizer.getWidth(context, 66),
                runSpacing: AppSizer.getHeight(context, 10),
                children: [
                  CheckBoxContainer(
                    label: 'Masig',
                    state: masigState,
                  ),
                  CheckBoxContainer(
                    label: 'Sturmisch',
                    state: sturmischState,
                  ),
                ],
              ),
              SizedBox(height: AppSizer.getHeight(context, 22)),

              //! INPUT FIELD
              InputFieldWithLable(
                label: 'Allgemeine Bemerkung',
                controller: TextEditingController(),
                width: AppSizer.getWidth(context, 155),
                height: AppSizer.getHeight(context, 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
