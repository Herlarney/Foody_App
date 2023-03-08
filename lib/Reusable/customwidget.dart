import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final TextStyle? style;
  final String? label;
  final Color? color;
  const CustomWidget({
    this.color,
    this.style,
    this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      style: style,
      label!,
    );
  }
}
