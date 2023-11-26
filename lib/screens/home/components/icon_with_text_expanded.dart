import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class TextIconExpanded extends StatelessWidget {
  const TextIconExpanded({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
    this.press,
  }) : super(key: key);

  final String text, icon;
  final Color color;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: kPrimaryColor, padding: const EdgeInsets.all(15),
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: color,
      ),
      onPressed: press,
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            color: kPrimaryColor,
          ),
          Text(text),
        ],
      ),
    );
  }
}


