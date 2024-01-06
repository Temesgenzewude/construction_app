import 'package:construction_app/src/common_widgets/custom_text_field.dart';
import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/features/project/presentation/widgets/fixed_text_field.dart';
import 'package:construction_app/src/features/project/presentation/widgets/text_field_label.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

class MangelBearbeitenScreen extends HookWidget {
  const MangelBearbeitenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController(text: 'Fliesenleger');
    final descriptionController =
        useTextEditingController(text: 'Beschreibung');
    final fristController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text(
          'Mangel',
          style: TextStyle(
            color: Color(0xFF041675),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            height: 0,
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
                    'assets/images/pdf.svg',
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete_outline_sharp,
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
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizer.getWidth(context, 39),
          vertical: AppSizer.getHeight(context, 22),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FieldLable(
              labelText: 'Projektstart',
            ),
            CustomTextField(
              textEditingController: nameController,
              hintText: '',
              isDatePicker: false,
            ),
            SizedBox(
              height: AppSizer.getHeight(context, 18),
            ),
            FieldLable(
              labelText: 'Projektstart',
            ),
            CustomTextField(
              textEditingController: descriptionController,
              hintText: '',
              isDatePicker: false,
            ),
            SizedBox(
              height: AppSizer.getHeight(context, 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FieldLable(
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
                FieldLable(
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
                FieldLable(
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
            const SizedBox(
              height: 18,
            ),
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
                    height: 0,
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
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      size: 22,
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
                    height: 0,
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
                    icon: const Icon(
                      Icons.add_photo_alternate,
                      color: AppColors.primary,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppSizer.getHeight(context, 18),
            ),
            FieldLable(
              labelText: 'Anmerkungen',
            ),
            CustomTextField(
              textEditingController: fristController,
              maxLines: 2,
              hintText: '',
              isDatePicker: false,
            ),
            SizedBox(
              height: AppSizer.getHeight(context, 30),
            ),
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
                    child: const Icon(
                      Icons.save_outlined,
                      color: AppColors.primary,
                      size: 30,
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
    );
  }
}
