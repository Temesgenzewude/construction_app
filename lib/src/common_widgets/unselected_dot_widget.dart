
import 'package:flutter/material.dart';

class UnselectedDot extends StatelessWidget {
  final double? size;
  const UnselectedDot({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
        child: Container(
          width: 10,
          height: 10,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 172, 164, 164),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}