import 'package:ec_app/auth.dart';
import 'package:flutter/material.dart';

class CompleteScreen extends StatelessWidget {
  const CompleteScreen({super.key});

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
                Text('Complete Profile',
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

                Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              contentPadding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                              suffixIcon: Icon(Icons.person_outline_rounded),
                              suffixIconColor: Colors.grey,
                              labelText: 'First Name',
                              labelStyle: TextStyle(
                                  color: Colors.grey
                              ),
                              hintText: 'Enter your first name',
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
                              suffixIcon: Icon(Icons.person_outline_rounded),
                              suffixIconColor: Colors.grey,
                              labelText: 'Last Name',
                              labelStyle: TextStyle(
                                  color: Colors.grey
                              ),
                              hintText: 'Enter your last name',
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
                              suffixIcon: Icon(Icons.phone_iphone_rounded),
                              suffixIconColor: Colors.grey,
                              labelText: 'Phone Number',
                              labelStyle: TextStyle(
                                  color: Colors.grey
                              ),
                              hintText: 'Re-enter your phone Number',
                              helperStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              )
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(height: 36,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              floatingLabelBehavior: FloatingLabelBehavior.always,

                              contentPadding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                              suffixIcon: Icon(Icons.location_on_outlined),
                              suffixIconColor: Colors.grey,
                              labelText: 'Address',
                              labelStyle: TextStyle(
                                  color: Colors.grey
                              ),
                              hintText: 'Enter your Address',
                              helperStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              )
                          ),
                          keyboardType: TextInputType.streetAddress,
                        ),
                        SizedBox(height: 50,
                        ),
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
                                  MaterialPageRoute(builder: (context)=>Auth()));
                            },
                            child: Text('Continue',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Muli',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 50,
                        ),
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
