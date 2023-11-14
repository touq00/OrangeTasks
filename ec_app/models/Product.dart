

import 'package:flutter/material.dart';

class Product{
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite,isPopular;


  Product({
   required this.images,
    required this.colors,
    this.rating=0.0,
    required this.title,
    required this.price,
    required this.description,
    this.isFavourite =false,
    this.isPopular=false
});
}
List<Product> demoProduct=[
  Product(
    images: [
      'assets/images/ps4_console_white_1.png',
      'assets/images/ps4_console_white_2.png',
      'assets/images/ps4_console_white_3.png',
      'assets/images/ps4_console_white_4.png'
    ],
    colors: [
      Color(0xFFf6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white
    ],
    title: 'Wireless Controller for PS4™',
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true

  ),
  Product(
    images: [
      'assets/images/Image Popular Product 2.png'
    ],
    colors: [
      Color(0xFFf6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: 'Nike Sport White - Man Pant',
    price: 50.5,
    description: description,
    rating: 4.2,
      isFavourite: true,
      isPopular:true
  ),
  Product(
    images: ['assets/images/Image Popular Product 3.png',
    ],
    colors: [
      Color(0xFFf6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: 'Colurful Bike Helmet for men',
    price: 39.99,
    description: description,
    rating: 4.99,
      isPopular: true
  ),
  Product(
      images: ['assets/images/product 1 image.png',
      ],
      colors: [
        Color(0xFFf6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: 'Colurful American Eagle T-shirt',
      price: 19.99,
      description: description,
      rating: 4,
      isFavourite: true,
      isPopular: true

  ),
  Product(
      images: ['assets/images/shoes2.png',
      ],
      colors: [
        Color(0xFFf6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: 'Nike AirJordan Sport Shoes',
      price: 99.99,
      description: description,
      rating: 4,
      isFavourite: false,
      isPopular: true
  ),
  Product(
      images: ['assets/images/tshirt.png',
      ],
      colors: [
        Color(0xFFf6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: 'Adidas Sport T-shirt'
          'for Kids',
      price: 99.99,
      description: description,
      rating: 4,
      isFavourite: true,
    isPopular: true

  ),
];
const String description=
    'Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing...';

// class PopularProducts extends StatelessWidget {
//   const PopularProducts({
//     super.key,
//     this.width = 140,
//     this.aspectRetion=1.02,
//     required this.product,
//   });
//   final double width,aspectRetion;
//   final Product product;
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       child: Column(
//         children: [
//           AspectRatio(
//             aspectRatio: aspectRetion,
//             child: Container(
//               padding: EdgeInsets.all(12),
//               width: 140,
//               height: 140,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: Color(0xFFf3f3f3)
//               ),
//               child: Image.asset((ProductsPic[0].images[0])),
//             ),
//           ),
//           Text(
//             ProductsPic[0].title,
//             style: TextStyle(
//                 fontFamily: 'Muli',
//                 fontWeight: FontWeight.bold
//
//             ),
//           ),
//           SizedBox(height:5
//             ,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text('\$${ProductsPic[0].price}',
//                 style: TextStyle(
//                     color: Color(0xFFff7643),
//                     fontFamily: 'Muli',
//                     fontWeight: FontWeight.bold,
//                     fontSize: 17
//                 ),
//                 textAlign: TextAlign.start,
//               ),
//
//               HeartLikeButton()
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }