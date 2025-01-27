import 'package:flutter/material.dart';

class ApptButton extends StatelessWidget {
  final Widget text;
  final Color color;
  final void Function() onPressed;
  const ApptButton(
      {super.key,
      required this.text,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 25,
      height: 45,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(05))),
            backgroundColor: WidgetStatePropertyAll(color)),
        child: text,
      ),
    );
  }
}
