import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextButton(
      {required String text, required VoidCallback callback}) {
    return TextButton(
      onPressed: () {
        callback();
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 12, color: Colors.blue),
      ),
    );
  }

  static CustomTextField(
      {required TextEditingController controller,
      required String text,
      required bool tohide,
      required TextInputType textinputtype}) {
    return Container(
      height: 50,
      width: 343,
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          controller: controller,
          obscureText: tohide,
          keyboardType: textinputtype,
          decoration: InputDecoration(
              hintText: text,
              hintStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.white24),
              border: InputBorder.none),
        ),
      ),
    );
  }

  static CustomImage({required imgurl}) {
    return Image.asset("assets/images/$imgurl");
  }

  static CustomButton(
      {required VoidCallback callback, required String buttonname}) {
    return SizedBox(
      height: 45,
      width: 343,
      child: Center(
        child: ElevatedButton(
            onPressed: () {
              callback();
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5))),
            child: Text(
              buttonname,
              style: TextStyle(fontSize: 14, color: Colors.white),

            ),
        ),
      ),
    );
  }
}
