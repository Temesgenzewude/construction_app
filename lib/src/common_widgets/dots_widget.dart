import 'package:construction_app/src/common_widgets/selected_dot_widget.dart';
import 'package:construction_app/src/common_widgets/unselected_dot_widget.dart';
import 'package:flutter/material.dart';

class DotsWidget extends StatefulWidget {
  final int selectedIndex;
  final double? size;
  final int? totalDots;
  final Color? selectedColor;
  const DotsWidget({
    required this.selectedIndex,
    this.size,
    super.key,
    this.totalDots,
    this.selectedColor,
  });

  @override
  State<DotsWidget> createState() => _DotsWidgetState();
}

class _DotsWidgetState extends State<DotsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        widget.totalDots ?? 4,
        (index) => index == widget.selectedIndex
            ? SelectedDot(
                size: widget.size,
                selectedColor: widget.selectedColor,
              )
            : UnselectedDot(
                size: widget.size,
              ),
      ),
    );
  }
}
