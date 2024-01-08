import 'dart:io';

import 'package:country_picker/country_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import 'package:construction_app/src/common_widgets/button.dart';
import 'package:construction_app/src/common_widgets/custom_text_field.dart';
import 'package:construction_app/src/common_widgets/plus_icon_button.dart';
import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/features/project/presentation/widgets/text_field_label.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:construction_app/src/utils/country_code_to_flag.dart';

class CreateProjectScreen extends StatefulHookConsumerWidget {
  const CreateProjectScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateProjectScreenState();
}

class _CreateProjectScreenState extends ConsumerState<CreateProjectScreen> {
  File? imageFile;
  String countryName = "Germany";
  String countryFlag = CountryCodeToFlag.countryToFlag('DE');

  Future _pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      // File imgFile = File(image.path);
      setState(() {
        imageFile = File(image.path);
      });
    } on PlatformException {}
  }

  Future _pickImageFromCamera() async {
    try {
      final cameraImage =
          await ImagePicker().pickImage(source: ImageSource.camera);
      if (cameraImage == null) return;
      setState(() {
        imageFile = File(cameraImage.path);
      });
    } on PlatformException {}
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController projectNameEditingController =
        useTextEditingController();
    final TextEditingController countryEditingController =
        useTextEditingController();
    final TextEditingController projectNumberEditingController =
        useTextEditingController();
    final TextEditingController projectStartDateEditingController =
        useTextEditingController();
    final TextEditingController projectEndDateEditingController =
        useTextEditingController();
    final TextEditingController descriptionEditingController =
        useTextEditingController();
    final TextEditingController websiteEditingController =
        useTextEditingController();
    final TextEditingController streatEditingController =
        useTextEditingController();
    final TextEditingController postalCodeEditingController =
        useTextEditingController();
    final TextEditingController cityCodeEditingController =
        useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
        title: const Text(
          'Projekt erstellen',
          style: TextStyle(color: AppColors.primary, fontSize: 16),
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
          padding: EdgeInsets.only(
            left: AppSizer.getWidth(context, 59),
            right: AppSizer.getWidth(context, 39),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppSizer.getHeight(context, 18),
              ),
              FieldLable(
                labelText: 'Projekbbild',
              ),
              DottedBorder(
                borderType: BorderType.RRect,
                dashPattern: const [5, 3],
                radius: const Radius.circular(10),
                child: Container(
                  width: double.infinity,
                  height: AppSizer.getHeight(context, 138),
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        splashRadius: 0.1,
                        onPressed: () {
                          _pickImage();
                        },
                        icon: const Icon(
                          Icons.camera_alt_outlined,
                        ),
                      ),
                      const Text(
                        'Bild hinzufugen',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: AppSizer.getHeight(
                  context,
                  18,
                ),
              ),
              FieldLable(
                labelText: 'Projekbbild',
              ),
              CustomTextField(
                textEditingController: projectNameEditingController,
                hintText: 'Projektname eingeben',
                isDatePicker: false,
              ),
              SizedBox(
                height: AppSizer.getHeight(
                  context,
                  18,
                ),
              ),
              FieldLable(
                labelText: 'Projektnummer',
              ),
              CustomTextField(
                textEditingController: projectNumberEditingController,
                hintText: 'Projektnummer Eingeben',
                isDatePicker: false,
              ),
              SizedBox(
                height: AppSizer.getHeight(
                  context,
                  18,
                ),
              ),
              FieldLable(
                labelText: 'Projektstart',
              ),
              CustomTextField(
                textEditingController: projectStartDateEditingController,
                hintText: 'Datum eingeben',
                isDatePicker: true,
              ),
              SizedBox(
                height: AppSizer.getHeight(
                  context,
                  18,
                ),
              ),
              FieldLable(
                labelText: 'Projektende',
              ),
              CustomTextField(
                textEditingController: projectEndDateEditingController,
                hintText: 'Datum eingeben',
                isDatePicker: true,
              ),
              SizedBox(
                height: AppSizer.getHeight(
                  context,
                  18,
                ),
              ),
              FieldLable(
                labelText: 'Beschreibung',
              ),
              CustomTextField(
                textEditingController: descriptionEditingController,
                hintText: 'Beschreibung eingeben',
                isDatePicker: false,
              ),
              SizedBox(
                height: AppSizer.getHeight(
                  context,
                  18,
                ),
              ),
              FieldLable(
                labelText: 'Projekt-Website',
              ),
              CustomTextField(
                textEditingController: websiteEditingController,
                hintText: 'Projekt-Website eingeben',
                isDatePicker: false,
              ),
              SizedBox(
                height: AppSizer.getHeight(
                  context,
                  18,
                ),
              ),
              FieldLable(
                labelText: 'StraBe',
              ),
              CustomTextField(
                textEditingController: streatEditingController,
                hintText: 'StraBe eingeben',
                isDatePicker: false,
              ),
              SizedBox(
                height: AppSizer.getHeight(
                  context,
                  18,
                ),
              ),
              FieldLable(
                labelText: 'PLZ',
              ),
              CustomTextField(
                textEditingController: postalCodeEditingController,
                hintText: 'PLZ eingeben',
                isDatePicker: false,
              ),
              SizedBox(
                height: AppSizer.getHeight(
                  context,
                  18,
                ),
              ),
              FieldLable(
                labelText: 'Stadt',
              ),
              CustomTextField(
                textEditingController: cityCodeEditingController,
                hintText: 'Stadt eingeben',
                isDatePicker: false,
              ),
              SizedBox(
                height: AppSizer.getHeight(
                  context,
                  18,
                ),
              ),
              FieldLable(
                labelText: 'Land',
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
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
                width: double.infinity,
                child: TextField(
                  controller: countryEditingController,
                  decoration: InputDecoration(
                    prefixIcon: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(countryFlag),
                      ],
                    ),
                    suffixIcon: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          countryName,
                          style: const TextStyle(
                            color: Color(0xFF6D6868),
                            fontSize: 10,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down_rounded,
                        ),
                      ],
                    ),
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.72),
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                    border: InputBorder.none,
                    isDense: true,
                  ),
                  readOnly: true,
                  onTap: () {
                    showCountryPicker(
                      context: context,
                      showPhoneCode: false,
                      onSelect: (Country country) {
                        setState(() {
                          countryName =
                              country.displayNameNoCountryCode.split(' ')[0];
                          countryFlag = country.flagEmoji;
                        });
                        countryEditingController.text = '';
                      },
                      countryListTheme: CountryListThemeData(
                        margin: const EdgeInsets.all(15),
                        borderRadius: BorderRadius.circular(10),
                        inputDecoration: InputDecoration(
                          labelText: 'Search',
                          hintText: 'Start typing to search',
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: const Color(0xFF8C98A8).withOpacity(0.2),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  style: const TextStyle(
                    fontSize: 14,
                    height: 25 / 15,
                  ),
                  cursorColor: const Color.fromARGB(117, 0, 0, 0),
                ),
              ),
              SizedBox(
                height: AppSizer.getHeight(
                  context,
                  18,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Benutzerdefiniertes Feld Hinzufugen',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  PlusIconbutton(
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: AppSizer.getHeight(
                  context,
                  18,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                    backgroundColor: Colors.white,
                    textColor: AppColors.primary,
                    title: 'Abbrechen',
                    width: 120,
                  ),
                  Button(
                    backgroundColor: AppColors.primary,
                    textColor: Colors.white,
                    title: 'Spelchern',
                    width: 115,
                  ),
                ],
              ),
              SizedBox(
                height: AppSizer.getHeight(context, 48),
              )
            ],
          ),
        ),
      ),
    );
  }
}
