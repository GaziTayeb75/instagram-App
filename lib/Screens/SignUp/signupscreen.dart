import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/Login/loginscreen.dart';
import 'package:instagram_clone/Widgets/uihelper.dart';

class SignUpScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: "logo.png"),
            const SizedBox(
              height: 30,
            ),
            UiHelper.CustomTextField(
                controller: emailController,
                text: "Email",
                tohide: false,
                textinputtype: TextInputType.emailAddress),
            const SizedBox(
              height: 10,
            ),
            UiHelper.CustomTextField(
                controller: passwordController,
                text: "PassWord",
                tohide: true,
                textinputtype: TextInputType.text),
            const SizedBox(
              height: 10,
            ),
            UiHelper.CustomTextField(
                controller: usernameController,
                text: "Username",
                tohide: false,
                textinputtype: TextInputType.name),
            const SizedBox(
              height: 30,
            ),
            UiHelper.CustomTextButton(text: "Sign Up", callback: () {}),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an Account?",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                UiHelper.CustomTextButton(
                    text: "Sign In",
                    callback: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
