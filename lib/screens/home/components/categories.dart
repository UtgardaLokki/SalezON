import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/screens/favorite/favorite_screen.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children : [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 1),
              ),
              CustomButton(
                image: const AssetImage('assets/images/Categories 1.png'),
                text: 'Eating Out',
                onPressed: () {
                  Navigator.pushNamed(context, FavoriteScreen.routeName);
                },
              ),
              CustomButton(
                image: const AssetImage('assets/images/Categories 2.png'),
                text: 'Supermarkets',
                onPressed: () {
                  // Action for Button 1
                  print('Button 2 pressed');
                },
              ),
              CustomButton(
                image: const AssetImage('assets/images/Categories 3.png'),
                text: 'Clothes & etc.',
                onPressed: () {
                  // Action for Button 1
                  print('Button 3 pressed');
                },
              ),
            ]
          ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 1),
      ),
          CustomButton(
            image: const AssetImage('assets/images/Categories 4.png'),
            text: 'Entertainment',
            onPressed: () {
              // Action for Button 1
              print('Button 4 pressed');
            },
          ),
          CustomButton(
            image: const AssetImage('assets/images/Categories 5.png'),
            text: 'Transport',
            onPressed: () {
              // Action for Button 1
              print('Button 5 pressed');
            },
          ),
          CustomButton(
            image: const AssetImage('assets/images/Categories 6.png'),
            text: 'Health & Beauty',
            onPressed: () {
              // Action for Button 1
              print('Button 6 pressed');
            },
          ),
        ]),
        ]);
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              color: const Color(0xFFFFECDF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(icon),
          ),
          const SizedBox(height: 4),
          Text(text, textAlign: TextAlign.center)
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final ImageProvider image;
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    required this.image,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Column(
            children: [
              Image(
                image: image,
                height: 80, // Adjust image size as needed
                width: 110,
              ),
              SizedBox(height: 8), // Space between image and text
              Text(
                text,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


Future<http.Response> fetchCategories() {
  return http.get(Uri.parse('http://gpt.robotalf.com:8080/categories'));
}

class Category {
  final int id;
  final String name;
  final String url;

  const Category({
    required this.id,
    required this.name,
    required this.url,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
      "id": int id,
      "name": String name,
      "url": String url,
      } =>
          Category(
            id: id,
            name: name,
            url: url,
          ),
      _ => throw const FormatException('Failed to load album.'),
    };
  }
}