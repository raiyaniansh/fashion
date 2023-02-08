import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List image = [
    "assets/images/shoes.png",
    "assets/images/d555-honolulu-surf-t-shirt-4615-1-p[ekm]467x500[ekm].jpg",
    "assets/images/girls-top-500x500.jpg",
    "assets/images/ilford-county-blazer1193.jpg",
    "assets/images/CTK121_newnavy_flat_back_98FCF32DF6ED8.jpg",
    "assets/images/fb-sister-kimi-skinny-push-up-467x500.jpg",
    "assets/images/rowan-tree-grey-shorts-black-t-shirt-set-8418-p[ekm]342x500[ekm].jpg",
    "assets/images/puma-eagle-point-mens-sports-poly-full-zip-track-jacket-grey-yellow-15616-p[ekm]467x500[ekm].jpg",
    "assets/images/TownCat-Women-s-Loose-Casual-Long-Sleeved-Open-Front-Breathable-Cardigans-1-467x500.jpg",
    "assets/images/ST281_darkgreyheather_flat_front_76_5AB68C03EE5BC.jpg",
    "assets/images/images.jpg",
    "assets/images/b271f77ad36c9c3eed0e6fc6533d15e9.image.467x500.jpg",
  ];
  List item = [
    "SHOES",
    "TSHIRT",
    "TOP",
    "BLAZER",
    "HODE",
    "JEANS",
    "COMBO",
    "JACKET",
    "SHRUG",
    "HOT WEAR",
    "WATCH",
    "SHIRT"
  ];
  List price = [
    "30.33",
    "52.00",
    "40.00",
    "99.99",
    "70.00",
    "72.30",
    "56.27",
    "60.50",
    "90.99",
    "45.90",
    "99.99",
    "25.33"
  ];
  List rate = [
    "5.0",
    "4.3",
    "4.5",
    "4.2",
    "4.7",
    "4.5",
    "4.8",
    "4.8",
    "4.2",
    "4.1",
    "4.3",
    "4.0",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("SHOPPING GALLERY UI",style: TextStyle(fontWeight: FontWeight.normal)),
          centerTitle: true,
          backgroundColor: Color(0XFF5780B9),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(transform: GradientRotation(pi/2),colors: [
                Color(0xff71BADD),
                Color(0xffD392EE)
              ])
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: image.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Box(image[index], item[index], price[index], rate[index]);
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget Box(String image, String item, String price, String rate) {
    return Stack(
      children: [
        Container(
          height: 500,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            height: 25,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomRight: Radius.circular(8),
              ),
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$rate ",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 15,
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
            alignment: Alignment.center,
            height: 35,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "$item",
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),
                  ),
                  Text(
                    "\$ $price",
                    style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}