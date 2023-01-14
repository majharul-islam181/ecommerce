// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/consts/consts.dart';

Widget customTextField({String? title, String? hint,controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(redColor).size(16).fontFamily(semibold).make(),
      5.heightBox,
      TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            fontFamily: semibold,
            color: textfieldGrey,
          ),
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: redColor,
          )),
        ),
      ),
       10.heightBox,
      
    ],
  );
}
