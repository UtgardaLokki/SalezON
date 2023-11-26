import 'package:flutter/material.dart';

import 'icon_with_text.dart';
import 'icon_with_text_expanded.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextIconExpanded(
            text: "Limassol",
            icon: "assets/icons_zone/Location.svg",
            color: Colors.white,
            press: () {},
          ),
          const SizedBox(width: 30),
          TextIcon(
            text: "Near by",
            icon: "assets/icons_zone/navigation.svg",
            press: () {},
          ),
          TextIcon(
            text: "",
            icon: "assets/icons/User.svg",
            press: () {},
          ),
        ],
      );
  }
}
