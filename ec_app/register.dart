import 'package:ec_app/complete_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFffffff),
      appBar: AppBar(
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),

          child: Center(
            child: Column(

              children: [
                SizedBox(height: 60,
                ),
                Text('Register Account',
                  style: TextStyle(
                    fontSize: 33,
                    fontFamily: 'Muli',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 1,),
                Text('Complete your details or continue\n'
                    'with social media',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Muli',
                      color: Colors.grey[700]
                  ),
                ),
                SizedBox(height: 70,),
                //--- section 1 end
                Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                           contentPadding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                           suffixIcon: Icon(Icons.email_outlined),
                            suffixIconColor: Colors.grey,
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Colors.grey
                            ),
                            hintText: 'Enter your email',
                            helperStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                            )
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: 36,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              contentPadding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                              suffixIcon: Icon(Icons.lock_outlined),
                              suffixIconColor: Colors.grey,
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  color: Colors.grey
                              ),
                              hintText: 'Enter your password',
                              helperStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              )

                          ),
                        ),
                        SizedBox(height: 36,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              contentPadding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                              suffixIcon: Icon(Icons.lock_outlined),
                              suffixIconColor: Colors.grey,
                              labelText: 'Confirm Password',
                              labelStyle: TextStyle(
                                  color: Colors.grey
                              ),
                              hintText: 'Re-enter your password',
                              helperStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              )
                          ),
                        ),
                        SizedBox(height: 50,),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFff7643),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                              onPressed: ()
                              {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>CompleteScreen()));
                              },
                              child: Text('Continue',
                              style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Muli',
                              ),
                              ),
                          ),
                        ),
                        SizedBox(height: 90
                          ,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal:10 ),
                              padding: EdgeInsets.all(12),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                shape: BoxShape.circle
                              ),
                              child: SvgPicture.asset('assets/icons/google-icon.svg',
                              width: 20,
                                height: 20,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal:10 ),
                              padding: EdgeInsets.all(12),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  shape: BoxShape.circle
                              ),
                              child: SvgPicture.asset('assets/icons/facebook-2.svg',
                                width: 20,
                                height: 20,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal:10 ),
                              padding: EdgeInsets.all(12),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  shape: BoxShape.circle
                              ),
                              child: SvgPicture.asset('assets/icons/twitter.svg',
                                width: 20,
                                height: 20,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 40,),
                        Center(child: Text('By continuing your confirm that you agree\n with out Term and Condition',
                        style: TextStyle(color: Colors.grey[500],
                          fontFamily: 'Muli',
                          fontWeight: FontWeight.bold,
                          fontSize: 12
                        ),
                          textAlign: TextAlign.center,
                        ))
                      ],
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
