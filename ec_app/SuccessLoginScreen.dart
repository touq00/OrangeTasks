import 'package:ec_app/bot_navbar.dart';
import 'package:ec_app/home_page.dart';
import 'package:flutter/material.dart';

class SuccessLogin extends StatelessWidget {
  const SuccessLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFffffff),
      appBar: AppBar(

        title: Text('Login Success',
        style: TextStyle(
          fontFamily: 'Muli',
          fontSize: 15,
          color: Colors.grey,
        ),

        ),
        elevation: 0,
        backgroundColor: Color(0xFFffffff),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }
          , icon: Icon(Icons.arrow_back,
            size: 30,
            color: Colors.grey[800],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 80,),
          Image.asset('assets/images/success.png',
          ),
          SizedBox(height: 50,),
          Text('Login Success',
            style: TextStyle(
              fontFamily: 'Muli',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.grey
            ),
          ),
          SizedBox(height: 130,),
          SizedBox(
            height: 50,
            width: 250,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFff7643),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>TabsScreen()));

              },
              child: Text('Let\'s Start',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Muli',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
