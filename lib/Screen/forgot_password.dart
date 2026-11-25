import 'package:flutter/material.dart';

import '../custome widget/Custtom button.dart';
import '../custome widget/Custtom text field.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back),),
      body: SafeArea(child: Center(child: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Color(0XFFFFF2ED),
                    shape: BoxShape.circle
                  ),
                  child: Icon(Icons.lock_outline_rounded,size: 42,color: Color(0XFFFF5722),),
                ),
                Positioned(
                  right: 4,
                  bottom: 4,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(color: Color(0XFFFF5722),
                      shape: BoxShape.circle,
                      border: Border.all(color:Colors.white,width: 2),

                    ),
                    child: Text("?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Text("Forgot Password ?",style: TextStyle(fontSize: 24,color: Colors.black),),
            Text("Don't worry! It happens. please enter your registered phone number of email address",
            style: TextStyle(fontSize: 12,color: Colors.grey),),
            MyTextField(email: TextEditingController(), hint: 'phone number', mLine: 1, icon: Icons.contact_phone, suffixIcon: null,),
            SizedBox(height: 30,),
            CusttomButton(color: Colors.orange, onTap: () {  }, title: 'Send OTP', height:60, width: 300, textColor: Colors.white,)
          ],
        ),
      ),)),
    );
  }
}
