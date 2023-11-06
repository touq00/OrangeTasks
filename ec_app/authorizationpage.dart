import 'package:ec_app/complete_profile.dart';
import 'package:ec_app/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Auth extends StatelessWidget {
  const Auth ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Color(0xFFffffff),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFffffff),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
        }
          , icon: Icon(Icons.arrow_back,
            size: 30,
            color: Colors.grey[800],
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 70,
            ),
            Text('OTP Verification',
            style: TextStyle(
              fontSize: 33,
              fontFamily: 'Muli',
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height: 1,
            ),
           RichText(text: TextSpan(
             children: [
               TextSpan(
                 text: 'We sent your code to +962 795 195 ***\nThis code will be expired in ',
                 style: TextStyle(
                   fontSize: 15,
                   fontFamily: 'Muli',
                   color: Colors.grey[700]),
               ),
               TextSpan(
                 text: '00:13',
                 style: TextStyle(
                   color: Color(0xFFff7643),
                   fontSize: 15),

               ),
             ],
           ),
             textAlign: TextAlign.center,
           ),
            SizedBox(height: 100,),
            Form(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value){
                          if (value.length==1){
                            FocusScope.of(context).nextFocus();}
                        },
                        decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                        ),
                        style: Theme.of(context).textTheme.headlineMedium,
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        textAlign: TextAlign.center,

                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value){
                          if (value.length==1){
                            FocusScope.of(context).nextFocus();}
                        },
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )
                        ),
                        style: Theme.of(context).textTheme.headlineMedium,
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        textAlign: TextAlign.center,

                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value){
                          if (value.length==1){
                            FocusScope.of(context).nextFocus();}
                        },
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )
                        ),
                        style: Theme.of(context).textTheme.headlineMedium,
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        textAlign: TextAlign.center,

                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value){
                          if (value.length==1){
                            FocusScope.of(context).nextFocus();}
                        },
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )
                        ),
                        style: Theme.of(context).textTheme.headlineMedium,
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        textAlign: TextAlign.center,

                      ),
                    ),
                  ],
                ),
            ),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(

                    backgroundColor: Color(0xFFff7643),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>loginnPage()));
                  },
                  child: Text('Continue',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Muli',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
            TextButton(
                onPressed: (){}
                , child: Text('Resend OTP Code',
                  style: TextStyle(color: Colors.grey[700],
                  fontFamily: 'Muli',
                    decoration: TextDecoration.underline,
                  ),
                )

            ),
          ],

        ),

      ),
    );
  }
}
