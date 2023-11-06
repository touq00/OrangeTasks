import 'package:ec_app/forget_pass.dart';
import 'package:ec_app/home_page.dart';
import 'package:ec_app/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class loginnPage extends StatefulWidget {
  const loginnPage({super.key});

  @override
  State<
      loginnPage> createState() => _loginnPageState();
}

class _loginnPageState extends State<loginnPage> {
  bool value = false;
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
      body: Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 60,
              ),
              Text('Welcome Back',
                style: TextStyle(
                  fontSize: 33,
                  fontFamily: 'Muli',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 1,),
              Text('Sign in your email and password\n'
                  'or continue with social media',
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Muli',
                    color: Colors.grey[700]
                ),
              ),
              SizedBox(height: 70,),
              Form(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: TextFormField(
                      //style: Theme.of(context).textTheme.headlineMedium,
                          keyboardType: TextInputType.emailAddress,
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
                  SizedBox(height: 20,
                  ),
                ],
              ),
              ),
              Row(
                children: [
                  SizedBox(width: 10,
                  ),
                  Checkbox(value: this.value, onChanged: (bool? value) { setState(() {
                    this.value=value!;
                  }); },
                  ),
                  Expanded(child: Text('Remember Me',
                  style: TextStyle(
                    fontFamily: 'Muli'
                  ),)),


                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassScreen()));
                    },
                    child:
                    Text('Forget Password',
                    style: TextStyle(
                      fontFamily: 'Muli',
                      color: Colors.grey[700],
                      decoration: TextDecoration.underline
                    ),
                    ),
                    ),
                ],
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

                  },
                  child: Text('Continue',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Muli',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 70,),
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
              SizedBox(height: 20,),
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
      ),
      ),
    );
  }
}
