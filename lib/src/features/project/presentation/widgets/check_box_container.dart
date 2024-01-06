import 'package:construction_app/src/constants/colors.dart';
import 'package:construction_app/src/utils/app_sizer.dart';
import 'package:flutter/material.dart';

class CheckBoxContainer extends StatelessWidget {
  const CheckBoxContainer({
    super.key,
    required this.label,
    required this.state,
  });
  final String label;
  final ValueNotifier state;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 11,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        SizedBox(width: AppSizer.getWidth(context, 5)),

        Container(
          width: 28,
          height: 28,
          padding: const EdgeInsets.all(10),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
            shadows: const [
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
          child: Checkbox(
            value: state.value,
            onChanged: (newValue) {
              state.value = newValue;
            },
            visualDensity: VisualDensity.compact,
            side: BorderSide.none,
            activeColor: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
