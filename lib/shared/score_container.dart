import 'package:flutter/material.dart';

class ScoreBtn extends StatelessWidget {
  final String btnName;
  final Color btnColor;
  final VoidCallback onPressed;
  final bool withIcon;

  const ScoreBtn({
    super.key,
    required this.btnName,
    required this.btnColor,
    required this.onPressed,
    required this.withIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width * 0.5,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 15,
            shadowColor: Colors.black,
            backgroundColor: btnColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              btnName,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            withIcon ? const Icon(Icons.replay) : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
