import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/features/project/presentation/widgets/check_box_container.dart';
import 'package:construction_app/src/features/project/presentation/widgets/custom_text_field.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class DailyReportScreen extends HookWidget {
  const DailyReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final allgemeineController = useTextEditingController();
    final maxController = useTextEditingController();
    final minController = useTextEditingController();
    final adresseController = useTextEditingController();
    final firmaController = useTextEditingController();
    final projektController = useTextEditingController();
    final uhrzeitController = useTextEditingController();
    final datumController = useTextEditingController();
    final berichtsController = useTextEditingController();

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
                  TextFieldWithLable(
                    label: 'Berichts Nr',
                    controller: berichtsController,
                    width: AppSizer.getWidth(context, 45),
                  ),
                  TextFieldWithLable(
                    label: 'Datum',
                    controller: datumController,
                    width: AppSizer.getWidth(context, 45),
                  ),
                  TextFieldWithLable(
                    label: 'Uhrzeit',
                    controller: uhrzeitController,
                    width: AppSizer.getWidth(context, 45),
                  ),
                ],
              ),
              SizedBox(height: AppSizer.getHeight(context, 22)),
              Wrap(
                spacing: AppSizer.getWidth(context, 30),
                runSpacing: AppSizer.getHeight(context, 10),
                children: [
                  TextFieldWithLable(
                    label: 'Projekt',
                    controller: projektController,
                    width: AppSizer.getWidth(context, 45),
                  ),
                  TextFieldWithLable(
                    label: 'Firma',
                    controller: firmaController,
                    width: AppSizer.getWidth(context, 45),
                  ),
                ],
              ),
              SizedBox(height: AppSizer.getHeight(context, 22)),
              TextFieldWithLable(
                label: 'Adresse',
                controller: adresseController,
                width: AppSizer.getWidth(context, 255),
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
                  Row(
                    mainAxisSize: MainAxisSize.min,
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
                      SizedBox(width: AppSizer.getWidth(context, 27)),
                      CustomTextField(
                        controller: minController,
                        width: AppSizer.getWidth(context, 95),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Max',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: AppSizer.getWidth(context, 27)),
                      CustomTextField(
                        controller: maxController,
                        width: AppSizer.getWidth(context, 95),
                      ),
                    ],
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
              TextFieldWithLable(
                label: 'Allgemeine Bemerkung',
                controller: allgemeineController,
                width: AppSizer.getWidth(context, 150),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
