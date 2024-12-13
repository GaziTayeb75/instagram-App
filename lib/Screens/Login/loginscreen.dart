import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/SignUp/signupscreen.dart';
import 'package:instagram_clone/Widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: 'logo.png'),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomTextField(
              controller: emailController,
              text: 'Email',
              tohide: false,
              textinputtype: TextInputType.text,
            ),
            SizedBox(
              height: 15,
            ),
            UiHelper.CustomTextField(
              controller: passWordController,
              text: 'PassWord',
              tohide: true,
              textinputtype: TextInputType.text,
            ),
            Padding(
              padding: EdgeInsets.only(right: 250),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  UiHelper.CustomTextButton(
                      text: "Forgot PassWord?", callback: () {})
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            UiHelper.CustomButton(callback: () {}, buttonname: 'Log In'),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               //  UiHelper.CustomImage(imgurl: "icon.png"),
                UiHelper.CustomTextButton(
                    text: "Log in with Facebook", callback: () {})
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "OR",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don,t have an account?",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
            UiHelper.CustomTextButton(text: "Sign Up", callback: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
            }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
