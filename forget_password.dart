import 'package:ec_app/login_page.dart';
import 'package:ec_app/register_page.dart';
import 'package:flutter/material.dart';

class ForgetPassScreen extends StatelessWidget {
  const ForgetPassScreen({super.key});

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
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 60,
                ),
                Text('Forgot Password',
                  style: TextStyle(
                    fontSize: 33,
                    fontFamily: 'Muli',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 1,),
                Text('Please enter ypur email and we will send\n'
                    'you a link to return to yout account',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Muli',
                      color: Colors.grey[700]
                  ),
                ),
                SizedBox(height: 70,),
               Form(child: Column(
                 children: [
                   TextFormField(
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
                   SizedBox(height: 80,),
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
                         Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context)=>loginnPage()));
                       },
                       child: Text('Continue',
                         style: TextStyle(
                           fontSize: 20,
                           fontFamily: 'Muli',
                         ),
                       ),
                     ),
                   ),
                   SizedBox(height: 40,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("Don't have an account?"),
                       InkWell(onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage() )
                         );
                       },
                         child: Text('  Sign Up',
                           style: TextStyle(
                               color: Color(0xFFff7643)
                           ),
                         ),

                       ),
                     ],
                   ),
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
