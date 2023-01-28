import 'package:ecommerce/consts/consts.dart';

import 'package:ecommerce/widgets_common/applogo_widget.dart';
import 'package:ecommerce/widgets_common/bg_widget.dart';
import 'package:ecommerce/widgets_common/custom_textfield.dart';
import 'package:ecommerce/widgets_common/our_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? ischeck = false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.06).heightBox,
              applogoWidget(),
              10.heightBox,
              'Join the $appname'.text.size(18).fontFamily(bold).white.make(),
              10.heightBox,
              Column(children: [
                customTextField(title: name, hint: nameHint),
                customTextField(title: email, hint: emailhint),
                customTextField(title: password, hint: passwordHint),
                customTextField(title: retypePassword, hint: passwordHint),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: forgetPassword.text.make(),
                  ),
                ),

                // check box
                Row(
                  children: [
                    Checkbox(
                        value: ischeck,
                        checkColor: redColor,
                        onChanged: ((value) {
                          setState(() {
                            ischeck = value;
                          });
                        })),
                    10.widthBox,
                    Expanded(
                      child: RichText(
                          text: const TextSpan(
                        children: [
                          TextSpan(
                              text: "I agree to the ",
                              style: TextStyle(
                                fontFamily: bold,
                                color: fontGrey,
                              )),
                          TextSpan(
                              text: termAndCond,
                              style: TextStyle(
                                fontFamily: bold,
                                color: redColor,
                              )),
                          TextSpan(
                              text: " & ",
                              style: TextStyle(
                                fontFamily: bold,
                                color: redColor,
                              )),
                          TextSpan(
                              text: privacyPolicy,
                              style: TextStyle(
                                fontFamily: bold,
                                color: redColor,
                              )),
                        ],
                      )),
                    ),
                  ],
                ),

                //Sighup button
                ourButton(
                        bgcolor: ischeck == true? redColor : lightGrey,
                        onPress: () {},
                        textcolor: whiteColor,
                        buttonName: signup)
                    .box
                    .width(context.width - 50)
                    .make(), 
                5.heightBox,

                // Wrapping into gesture detector of veiocity X

                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                    text: "Already have an account?",
                    style: TextStyle(
                      fontFamily: bold,
                      color: fontGrey,
                    ),
                  ),
                  TextSpan(
                      text: "Log in",
                      style: TextStyle(fontFamily: bold, color: redColor)),
                ])).onTap(() {
                  Get.back();
                })
              ])
                  .box
                  .color(whiteColor)
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth - 25)
                  .rounded
                  .shadowMd
                  .make(),
              20.heightBox,
            ],
          ),
        ),
      ),
    ));
  }
}
