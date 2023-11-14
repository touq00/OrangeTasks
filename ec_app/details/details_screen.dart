
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  List<PsController> list2 = [
    PsController(psControllerPic: 'assets/images/Image Popular Product 1.png'),
    PsController(psControllerPic: 'assets/images/ps4_console_white_2.png'),
    PsController(psControllerPic: 'assets/images/ps4_console_white_3.png'),
    PsController(psControllerPic: 'assets/images/ps4_console_white_4.png'),
  ];

  List<ColorDot> colors = [
    const ColorDot(color: Colors.red,),
    const ColorDot(color: Colors.deepPurple,),
    const ColorDot(color: Color(0xFFDECB9C)),
    const ColorDot(color: Colors.white,),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFf5f6f9),
        body: Stack(
          children: [
              Column(
                children: [
                  Padding(padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 50,height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,color: Colors.white),
                            child: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),
                          ),
                        ),
                        Container(
                          width: 90,height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '4.8',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'Muli',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 7),
                              SvgPicture.asset(
                                'assets/icons/Star Icon.svg',
                                width: 17,
                                height: 17,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset('assets/images/Image Popular Product 1.png'),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(list2.length, (index) {
                          return Row(
                            children: [
                              list2[index],
                              SizedBox(width: 14,)
                            ],
                          );
                        })
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(width: double.infinity,
                  height: 380,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                        color: Colors.white
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 20),
                          child: Text('Wireless Controller for PS4™',
                          style: TextStyle(
                            fontFamily: 'Muli',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 75,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20)
                                ),
                                color: Color(0xFFffe6e6)
                              ),
                              child: Icon(Icons.favorite,color: Colors.red,),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: 20,top: 10
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Wireless Controller for PS4™ gives you what \nyou want in your gaming from over precision\ncontrol your games to sharing ...',
                              style: TextStyle(
                                fontFamily: 'Muli',
                                color: Colors.grey[500]
                              ),
                              ),
                              SizedBox(height: 15,),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      print('MEW');
                                    },
                                    child: Text('See More Detail',
                                    style: TextStyle(
                                      color: Color(0xFFff7643),
                                      fontFamily: 'Muli',
                                      fontWeight: FontWeight.bold
                                    ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios_rounded,
                                  size: 15,
                                    color: Color(0xFFff7643),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),

                        Container(
                          width: double.infinity,
                          height: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)
                            ),
                            color: Color(0xFFf3f3f3)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Row(

                                      children: List.generate(colors.length, (index) {
                                        return Row(
                                          children: [
                                            colors[index],SizedBox(width: 8,)
                                          ],
                                        );
                                      },
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 20,
                                    child: IconButton(
                                      padding: EdgeInsets.zero,
                                      icon: Icon(Icons.remove),
                                      color: Color(0xFFff7643),
                                      onPressed: () {
                                        print('MEW00');
                                      },
                                    ),
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 20,
                                    child: IconButton(
                                      padding: EdgeInsets.zero,
                                      icon: Icon(Icons.add),
                                      color: Color(0xFFff7643),
                                      onPressed: () {
                                        print('MEW00');
                                      },
                                    ),
                                  ),
                                  Spacer()
                                ],
                              ),
                            ],
                          ),
                        ),

                      ],

                    ),
                  ),

                ],
              ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                      ),
                      color: Colors.white
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width:250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFff7643)
                        ),
                        child: MaterialButton(
                          onPressed: (){},
                          child: Text('Add To Cart',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Muli',
                              fontSize: 20
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ]
        ),
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key, required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color
      ),
    );
  }
}

class PsController extends StatelessWidget {
  const PsController({
    super.key, required this.psControllerPic,
  });
  final String psControllerPic;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Colors.white
      ),
      child: Image.asset(psControllerPic),
    );
  }
}
