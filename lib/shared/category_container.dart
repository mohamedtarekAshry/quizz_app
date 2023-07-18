import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String? testName;
  final Color? containerColor;
  final Function()? onTabFunction;

  const CategoryContainer(
      {super.key, this.testName, this.containerColor, this.onTabFunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTabFunction,
        child: Container(
          color: containerColor,
          child: Center(
            child: Text(
              testName!,
              style: const TextStyle(
                fontSize: 34,
                color: Colors.white,
                fontFamily: "Dancing",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
