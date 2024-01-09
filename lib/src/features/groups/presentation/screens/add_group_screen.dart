import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/features/groups/presentation/widgets/custom_button.dart';
import 'package:construction_app/src/features/groups/presentation/widgets/drop_down_selection.dart';
import 'package:construction_app/src/features/groups/presentation/widgets/custom_text_field.dart';
import 'package:construction_app/src/routing/routing.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class AddGroupScreen extends HookWidget {
  AddGroupScreen({super.key});
  final List<Map<String, dynamic>> companies = [
    {
      'name': 'Ethiopia',
    },
    {
      'name': 'United Kingdom',
    },
    {
      'name': 'Australia',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final selectionState = useState("");
    final teilnehmerController = useTextEditingController();
    final groupNameController = useTextEditingController();
    final gruppendienstController = useTextEditingController();
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
                    'Gruppe erstellen',
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
                  //! INPUT FIELD
                  TextFieldWithlabel(
                    label: 'Gruppenname',
                    controller: groupNameController,
                    obscurePassword: false,
                  ),
                  SizedBox(height: AppSizer.getHeight(context, 15)),
                  TextFieldWithlabel(
                    label: 'Gruppendienst',
                    controller: gruppendienstController,
                    obscurePassword: false,
                  ),
                  SizedBox(height: AppSizer.getHeight(context, 15)),
                  //! DROP DOWN
                  DropDownSelection(
                    companies: companies,
                    companyState: selectionState,
                    lable: 'Anzahl der Teilnehmer',
                    hintText: '',
                  ),
                  SizedBox(height: AppSizer.getHeight(context, 15)),
                  //! INPUT FIELD LABEL
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Teilnehmer 1 Verantwortung',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            colorFilter: const ColorFilter.mode(
                                AppColors.primary, BlendMode.srcIn),
                            "assets/icons/plus-circle.svg",
                            width: AppSizer.getWidth(context, 18),
                            height: AppSizer.getWidth(context, 18),
                          ),
                          SizedBox(width: AppSizer.getWidth(context, 5)),
                          const Text(
                            'Neu',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: AppSizer.getHeight(context, 5)),
                  //! INPUT FIELD
                  CustomeTextField(
                    controller: teilnehmerController,
                    obscurePassword: false,
                    prefixIcon: null,
                    suffixIcon: null,
                  ),
                  SizedBox(height: AppSizer.getHeight(context, 80)),
                  CustomButton(
                    routeName: AppRoutes.AddGroupScreen.name,
                    buttonName: 'Gruppe hinzufügen',
                    buttonColor: AppColors.primary,
                    textColor: Colors.white,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
