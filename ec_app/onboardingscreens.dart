import 'package:ec_app/login_page.dart';
import 'package:ec_app/register_page.dart';
import 'package:ec_app/main.dart';
import 'package:flutter/material.dart';

class Data {
  final String title;
  final String description;
  final String image;

  Data(
    @required this.title,
    @required this.description,
    @required this.image,
  );
}

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentindex=0;

  final List<Data> myData = [

    Data(
      'TOKOTO',
      "Welcome to Tokoto, Let's shop!",
      'assets/images/splash_1.png',
    ),
    Data('Splash Screen 2',
        "Welcome to Tokoto, Let's shop!",
        'assets/images/splash_2.png'
    ),
    Data('Splash Screen 3',
        "Welcome to Tokoto, Let's shop!",
        'assets/images/splash_3.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'LoginnPage': (ctx) => loginnPage(),
      },
      home: Scaffold(
        body: Stack(
          children: [
            PageView(
              children: myData
                  .map((item) => Container(
                        //color: Color(0xFFffffff),
                        decoration: BoxDecoration(
                            color: Color(0xFFffffff),
                            image: DecorationImage(
                              image: ExactAssetImage(
                                item.image,
                                scale: 3.5,
                              ),
                            )),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              item.title,
                              style: TextStyle(
                                color: Color(0xFFff7643),
                                fontSize: 40,
                                fontFamily: 'Muli',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              item.description,
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontFamily: 'Muli',
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 350,
                            ),
                            SizedBox(
                              height: 101,
                            ),
                            Center(child: Indicator(_currentindex
                            )),
                            SizedBox(height: 99,)
                          ],
                        ),
                      ))
                  .toList(),
              onPageChanged: (val){
                setState(() {
                  _currentindex=val;
                });
              },
            ),
            Builder(
              builder: (ctx)=>Align(
                alignment: Alignment(0, 0.90),
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFff7643),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    
                    onPressed: () {
                      {
                        Navigator.of(ctx).pushNamed('LoginnPage');
                      };
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontFamily: 'Muli',
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final int index;

  Indicator(this.index);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildContainer(0,index==0? Color(0xFFff7643) : Color(0xFFd8d8d8)),
        buildContainer(1,index==1? Color(0xFFff7643): Color(0xFFd8d8d8)),
        buildContainer(2,index==2? Color(0xFFff7643): Color(0xFFd8d8d8)),
      ],
    );
  }
  Container buildContainer(int i,Color color) {

    return index == i ?
    Container(
      margin: EdgeInsets.all(2),
      height: 5,
      width: 20,
      decoration: BoxDecoration(

        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
    )
        :

    Container(
      margin:EdgeInsets.all(2),
      height: 7,
      width: 7,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    )


    ;
  }
}
