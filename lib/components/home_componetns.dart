import 'package:flutter/material.dart';

class HomeBuild extends StatelessWidget {
  const HomeBuild(
      {super.key,
      required this.text,
      required this.color,
      required this.onTap});
  final String? text;
  final Color? color;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 13.0, top: 30),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          alignment: Alignment.center,
          width: 185,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              text!,
              style: const TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
