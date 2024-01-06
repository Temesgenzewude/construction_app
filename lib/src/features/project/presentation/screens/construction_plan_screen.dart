import 'package:construction_app/src/common_widgets/custom_text_field.dart';
import 'package:construction_app/src/features/project/presentation/widgets/text_field_label.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ConstructionPlanScreen extends HookWidget {
  const ConstructionPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final startDateController = useTextEditingController(text: '04.10.23');
    final endDateController = useTextEditingController(text: '06.10.23');
    final titleController =
        useTextEditingController(text: 'Keine Phase Festgelegt');
    final durationController =
        useTextEditingController(text: '3 Tage (0m 0w 2t)');

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: const Text(
          'Bauzeitenplan',
          style: TextStyle(
            color: Color(0xFF041675),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            height: 0,
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
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizer.getWidth(context, 39),
          vertical: AppSizer.getWidth(context, 14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Baustelleneinrichtung',
              style: TextStyle(
                color: Color(0xFF041675),
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            FieldLable(
              labelText: 'Ubergeordnete Phase',
            ),
            CustomTextField(
              textEditingController: titleController,
              isDatePicker: false,
              hintText: '',
            ),
            const SizedBox(
              height: 14,
            ),
            FieldLable(
              labelText: 'Projektstart',
            ),
            DateTextField(controller: startDateController),
            const SizedBox(
              height: 14,
            ),
            FieldLable(
              labelText: 'Dauer',
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              margin: const EdgeInsets.only(top: 3),
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
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.7200000286102295),
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                  border: InputBorder.none,
                  prefixIcon: const Icon(
                    Icons.access_time,
                    size: 20,
                  ),
                  isDense: true,
                ),
                style: const TextStyle(
                  fontSize: 14,
                  height: 25 / 15,
                ),
                cursorColor: const Color.fromARGB(117, 0, 0, 0),
                controller: durationController,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            FieldLable(
              labelText: 'Projektende',
            ),
            DateTextField(controller: endDateController),
          ],
        ),
      ),
    );
  }
}

class DateTextField extends StatelessWidget {
  const DateTextField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      margin: const EdgeInsets.only(top: 3),
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
        decoration: InputDecoration(
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.7200000286102295),
            fontSize: 12,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
          border: InputBorder.none,
          prefixIcon: const Icon(
            Icons.date_range,
            size: 20,
          ),
          isDense: true,
        ),
        readOnly: true,
        onTap: () => selectedDate(
          context,
          DateTime(2020),
          DateTime(2030),
          controller,
        ),
        style: const TextStyle(
          fontSize: 14,
          height: 25 / 15,
        ),
        cursorColor: const Color.fromARGB(117, 0, 0, 0),
        controller: controller,
      ),
    );
  }

  Future<void> selectedDate(BuildContext context, DateTime firstDate,
      DateTime lastDate, TextEditingController controller) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      firstDate: firstDate,
      lastDate: lastDate,
    );

    if (pickedDate != null) {
      controller.text = pickedDate.toString().split(' ')[0];
    }
  }
}
