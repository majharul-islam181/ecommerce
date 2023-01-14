import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/widgets_common/applogo_widget.dart';
import 'package:ecommerce/widgets_common/bg_widget.dart';
import 'package:ecommerce/widgets_common/custom_textfield.dart';
import 'package:ecommerce/widgets_common/our_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.06).heightBox,
            applogoWidget(),
            10.heightBox,
            'Log in to $appname'.text.size(18).fontFamily(bold).white.make(),
            10.heightBox,
            Column(
              children: [
                customTextField(title: email, hint: emailhint),
                customTextField(title: password, hint: passwordHint),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: forgetPassword.text.make(),
                  ),
                ),
                ourButton(
                  bgcolor: redColor,
                  onPress: () {},
                  textcolor: whiteColor,
                ).box.width(context.width - 50).make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).size(11).make(),
              ],
            )
                .box
                .color(whiteColor)
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 25)
                .rounded
                .make(),
          ],
        ),
      ),
    ));
  }
}
