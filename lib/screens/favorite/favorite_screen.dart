import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/home/components/home_header.dart';

import '../details/details_screen.dart';
import '../home/components/categories.dart';
import '../home/components/icon_with_text.dart';
import '../home/components/icon_with_text_expanded.dart';

class FavoriteScreen extends StatelessWidget {
  static String routeName = "/favorite";

  const FavoriteScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          HomeHeader(),
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                ),
                Text(
                  " Eating out",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ]
          ),
          SizedBox(height: 20),
          RestaurantCard(
              name: "Mandarin Bar",
              image: "assets/images/Frame 52.png",
              description: "Best of the best",
              distance: " 3 m away",
              offerCount: " 3 offers",
          ),
          SizedBox(height: 20),
          RestaurantCard(
            name: "Piatsa Gourouna",
            image: "assets/images/Frame 51.png",
            description: "Best of the best",
            distance: " 6 m away",
            offerCount: " 3 offers",
          ),
          SizedBox(height: 20),
          RestaurantCard(
            name: "Smoke ON",
            image: "assets/images/Frame 54.png",
            description: "Best of the best",
            distance: " 15 m away",
            offerCount: " 3 offers",
          ),
          SizedBox(height: 20),
          RestaurantCard(
            name: "Bilbo Experience",
            image: "assets/images/Frame 55.png",
            description: "Best of the best",
            distance: " 34 m away",
            offerCount: " 3 offers",
          ),
          SizedBox(height: 20),
          RestaurantCard(
            name: "Tartufo Restortan",
            image: "assets/images/Frame 53.png",
            description: "Best of the best",
            distance: " 83 m away",
            offerCount: " 3 offers",
          ),
        ],
      ),
    ),
    );
  }
}



class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key? key,
    required this.name,
    required this.image,
    required this.description,
    required this.distance,
    required this.offerCount,

    this.press,
  }) : super(key: key);

  final String name, image, description, distance, offerCount;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return  Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10),
          ),
          CustomButton(
            image: AssetImage(image),
            text: '',
            onPressed: () => Navigator.pushNamed(
              context,
              DetailsScreen.routeName,
              arguments: ProductDetailsArguments(
                  product: demoProducts[4]),
            ),

          ),
          SizedBox(width: 10),
          Column(
            children: [
              Text(
                  name ,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextIcon(
                    text: "",
                    icon: "assets/icons_zone/Main page on.svg",
                    press: () {},
                  ),
                  Text(
                    offerCount,
                  ),
                ],
              ) ,
            ],
          ),
          SizedBox(width: 35),
          Column(
            children: [
              SizedBox(height: 5),
              Text(
                distance,
                style: TextStyle(
                  fontSize: 12,
                )
                ,),
              SizedBox(height: 30),
              TextIconExpanded(
                text: "",
                icon: "assets/icons_zone/Location.svg",
                color: Color(0xFFFCEFEB),
                press: () {},
              ),
            ],
          ),
        ]
    );
  }
}

final List<Map<String, dynamic>> products = [
  {'name': 'Product 1', 'image': 'assets/product1.png', "desc": "Test description"},
  {'name': 'Product 2', 'image': 'assets/product2.png', "desc": "Test description"},
];
