import 'package:construction_app/src/common_widgets/custom_text_field.dart';
import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/features/project/presentation/widgets/fixed_text_field.dart';
import 'package:construction_app/src/features/project/presentation/widgets/text_field_label.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class MangelBearbeitenScreen extends HookWidget {
  const MangelBearbeitenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final descriptionController =
        useTextEditingController();
    final fristController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
        title: const Text(
          'Mangel Bearbeiten',
          style: TextStyle(
            color: AppColors.primary,
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: AppSizer.getWidth(
                context,
                30,
              ),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/pdf.svg',
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/trash.svg',
                  ),
                ),
              ],
            ),
          ),
        ],
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
            horizontal: AppSizer.getWidth(context, 30),
            vertical: AppSizer.getHeight(context, 22),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FieldLable(
                labelText: 'Name',
              ),
              SizedBox(height: AppSizer.getHeight(context, 3)),
              CustomTextField(
                textEditingController: nameController,
                hintText: 'Fliesenleger',
                isDatePicker: false,
              ),
              SizedBox(height: AppSizer.getHeight(context, 18)),
              const FieldLable(
                labelText: 'Beschreibung',
              ),
              SizedBox(height: AppSizer.getHeight(context, 3)),
              CustomTextField(
                textEditingController: descriptionController,
                hintText: 'Sprung in der Fliese 3.0G RH',
                isDatePicker: false,
              ),
              SizedBox(height: AppSizer.getHeight(context, 18)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const FieldLable(
                    labelText: 'Frist',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FixedTextFieldWidget(controller: fristController),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/images/edit.svg',
                        ),
                        iconSize: 18,
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const FieldLable(
                    labelText: 'Abgestellt am',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FixedTextFieldWidget(controller: fristController),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/images/edit.svg',
                        ),
                        iconSize: 18,
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const FieldLable(
                    labelText: 'Verursacher',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FixedTextFieldWidget(controller: fristController),
                      IconButton(
                        splashRadius: 0.1,
                        padding: const EdgeInsets.all(0),
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/images/edit.svg',
                        ),
                        iconSize: 18,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Fotos',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSizer.getWidth(context, 16),
                      vertical: AppSizer.getHeight(context, 15),
                    ),
                    clipBehavior: Clip.antiAlias,
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
                    child: IconButton(
                      icon: SvgPicture.asset(
                        width: 22,
                        height: 22,
                        'assets/icons/ph_camera.svg',
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const Text(
                    'or',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSizer.getWidth(context, 16),
                      vertical: AppSizer.getHeight(context, 16),
                    ),
                    clipBehavior: Clip.antiAlias,
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
                    child: IconButton(
                      icon: SvgPicture.asset(
                        width: 22,
                        height: 22,
                        'assets/icons/gallery_add.svg',
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSizer.getHeight(context, 18)),
              const FieldLable(
                labelText: 'Anmerkungen',
              ),
              SizedBox(height: AppSizer.getHeight(context, 3)),
              CustomTextField(
                textEditingController: fristController,
                maxLines: 2,
                hintText: '',
                isDatePicker: false,
              ),
              SizedBox(height: AppSizer.getHeight(context, 56)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
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
                    child: FloatingActionButton(
                      onPressed: () {},
                      shape: const CircleBorder(),
                      backgroundColor: Colors.white,
                      elevation: 0,
                      child: SvgPicture.asset(
                        width: 30,
                        height: 30,
                        'assets/icons/save-line.svg',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
