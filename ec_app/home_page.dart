import 'package:ec_app/details/details_screen.dart';
import 'package:ec_app/home_page.dart';
import 'package:ec_app/models/Product.dart';
import 'package:ec_app/models/Product.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Ctg> list = [
    Ctg(text: 'Flash Deal', path: 'assets/icons/Flash Icon.svg'),
    Ctg(text: 'Bill', path: 'assets/icons/Bill Icon.svg'),
    Ctg(text: 'Game', path: 'assets/icons/Game Icon.svg'),
    Ctg(text: 'Daily Gift', path: 'assets/icons/Gift Icon.svg'),
    Ctg(text: 'More', path: 'assets/icons/Discover.svg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFf4f4f4),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: 'Search Product',
                            hintStyle: const TextStyle(
                              fontSize: 14,
                              fontFamily: 'Muli',
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SvgPicture.asset(
                                  'assets/icons/Search Icon.svg'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: const Color(0XFFf4f4f4),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: SvgPicture.asset('assets/icons/Cart Icon.svg'),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Stack(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: const Color(0XFFf4f4f4),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: SvgPicture.asset('assets/icons/Bell.svg'),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 35),
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.red,
                          ),
                          child: const Center(
                            child: Text(
                              '+99',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: 350,
                height: 90,
                decoration: BoxDecoration(
                    color: const Color(0xFF4b3298),
                    borderRadius: BorderRadius.circular(22)),
                child: const Text.rich(
                  TextSpan(
                      text: 'A Summer Surpise\n',
                      style: TextStyle(
                          fontFamily: 'Muli',
                          fontSize: 16,
                          color: Colors.white),
                      children: [
                        TextSpan(
                          text: 'Cashback 20%',
                          style: TextStyle(
                              fontFamily: 'Muli',
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white,
                              letterSpacing: 1),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 34,
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: list,
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Special for you',
                      style: TextStyle(
                          fontFamily: 'Muli',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    Text(
                      'See More',
                      style: TextStyle(
                          fontFamily: 'Muli',
                          fontSize: 12,
                          color: Color(0xFFc3c3c3)),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 240,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          children: [
                            ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.2),
                                  BlendMode.srcOver),
                              child: Image.asset(
                                  'assets/images/Image Banner 2.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Smartphone\n',
                                      style: TextStyle(
                                        fontFamily: 'Muli',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '18 Brand',
                                      style: TextStyle(
                                        fontFamily: 'Muli',
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    SizedBox(
                      width: 240,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          children: [
                            ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.2),
                                  BlendMode.srcOver),
                              child: Image.asset(
                                  'assets/images/Image Banner 3.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Fashion\n',
                                      style: TextStyle(
                                        fontFamily: 'Muli',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '24 Brand',
                                      style: TextStyle(
                                        fontFamily: 'Muli',
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Products',
                      style: TextStyle(
                          fontFamily: 'Muli',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    Text(
                      'See More',
                      style: TextStyle(
                          fontFamily: 'Muli',
                          fontSize: 12,
                          color: Color(0xFFc3c3c3)),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      demoProduct.length,
                      (index) {
                        if (demoProduct[index].isPopular)
                          return ProductCard(product: demoProduct[index]);
                        return const SizedBox.shrink();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({super.key,
    this.width = 140,
    this.aspectRetion = 1.02,
    required this.product,
  });

  final double width, aspectRetion;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProductDetails()));
        },
        child: SizedBox(
          width: width,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRetion,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Color(0xFFf3f3f3)),
                  child: Image.asset(product.images[0]),
                ),
              ),
              Text(
                product.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Muli',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                        fontFamily: 'Muli',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.deepOrange),
                  ),
                  InkWell(
                    onTap: () {
                      print('mew');
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: product.isFavourite
                            ? Color(0xFFfeeae3)
                            : Color(0xFFf3f3f3),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset('assets/icons/Heart Icon_2.svg',
                            color: product.isFavourite
                                ? Colors.red
                                : Colors.grey[400]),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class HeartLikeButton extends StatefulWidget {
//   const HeartLikeButton({
//     super.key,
//   });
//
//   @override
//   State<HeartLikeButton> createState() => _HeartLikeButtonState();
// }
//
// class _HeartLikeButtonState extends State<HeartLikeButton> {
//   bool isPressed = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           isPressed = !isPressed;
//         });
//       },
//       child: Container(
//         padding: EdgeInsets.all(7),
//         width: 30,
//         height: 30,
//         decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: isPressed ? Color(0xFFfeeae3) : Color(0xFFf3f3f3)),
//         child: SvgPicture.asset(
//           'assets/icons/Heart Icon_2.svg',
//           color: isPressed ? Colors.red : Color(0xFFdbdee3),
//         ),
//       ),
//     );
//   }
// }

class Ctg extends StatelessWidget {
  const Ctg({
    super.key,
    required this.text,
    required this.path,
  });

  final String text;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Color(0xFFfeeadc),
          ),
          child: SvgPicture.asset(path),
        ),
        SizedBox(
          width: 43,
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Muli',
              fontSize: 15,
              color: Color(0xFF959595),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
