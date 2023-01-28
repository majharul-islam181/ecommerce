import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/consts/lists.dart';
import 'package:ecommerce/views/auth_screen/signup_screen.dart';
import 'package:ecommerce/views/home_screen/home_screen.dart';
import 'package:ecommerce/widgets_common/applogo_widget.dart';
import 'package:ecommerce/widgets_common/bg_widget.dart';
import 'package:ecommerce/widgets_common/custom_textfield.dart';
import 'package:ecommerce/widgets_common/our_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              (context.screenHeight * 0.06).heightBox,
              applogoWidget(),
              10.heightBox,
              'Log in to $appname'.text.size(18).fontFamily(bold).white.make(),
              10.heightBox,
              Column(children: [
                customTextField(title: email, hint: emailhint),
                customTextField(title: password, hint: passwordHint),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: forgetPassword.text.make(),
                  ),
                ),

                //login button
                ourButton(
                        bgcolor: redColor,
                        onPress: () {
                          Get.to(() => const HomeScreen());
                        },
                        textcolor: whiteColor,
                        buttonName: login)
                    .box
                    .width(context.width - 50)
                    .make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).size(11).make(),

                //sign up button
                ourButton(
                        bgcolor: lightGrey,
                        onPress: () {
                          Get.to(() => const SignupScreen());
                        },
                        textcolor: redColor,
                        buttonName: signup)
                    .box
                    .width(context.width - 50)
                    .make(),
                5.heightBox,
                loginWith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8),
                            child: CircleAvatar(
                              backgroundColor: lightGrey,
                              radius: 25,
                              child: Image.asset(
                                socialIconList[index],
                                width: 30,
                              ),
                            ),
                          )),
                ),
              ])
                  .box
                  .color(whiteColor)
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth - 25)
                  .rounded
                  .shadowMd
                  .make(),
            ],
          ),
        ),
      ),
    ));
  }
}
