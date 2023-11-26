import 'package:flutter/material.dart';

import '../../../components/rounded_icon_btn.dart';
import '../../../constants.dart';
import '../../../models/Product.dart';

class Coupons extends StatelessWidget {
  const Coupons({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> coupons = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal", "desc": "Test"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Bill", "desc": "Test"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Game", "desc": "Test"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift", "desc": "Test"},
      {"icon": "assets/icons/Discover.svg", "text": "More", "desc": "Test"},
    ];
    // Now this is fixed and only for demo
    return ListView.separated(
      itemCount: coupons.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(height: 1),
      itemBuilder: (context, i)  {
        return ListTile(
          leading: Icon(coupons[i]["icon"]),
          title: Text(coupons[i]["text"]),
          subtitle: Text(coupons[i]["desc"]),
        );
      },
    );
  }
}
