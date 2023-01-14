import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/views/auth_screen/login_screen.dart';
import 'package:ecommerce/widgets_common/applogo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //creating a method to change screen

  changeScreen() {
    Future.delayed(const Duration(seconds: 3), (() {
      Get.to(() => const LoginScreen());
    }));
  }

  @override
  void initState() {
    // TODO: implement initState
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 200,
                height: 200,
              ),
            ),
            20.heightBox,
            applogoWidget(),
            10.heightBox,
            appname.text.semiBold
                .color(Colors.white)
                .fontWeight(FontWeight.bold) //const bold1 = FontWeight.bold
                .fontFamily(bold)
                .size(22)
                .make(),
            10.heightBox,
            appversion.text.white.fontWeight(bold1).size(15).make(),
            const Spacer(),
            credits.text.pink100.make(),
            30.heightBox,
          ],
        ),
      ),
    );
  }
}
