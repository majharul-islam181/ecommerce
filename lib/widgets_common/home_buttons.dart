import 'package:ecommerce/consts/consts.dart';

Widget homeButtons({width,height,icon, String? titile, onPress}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icon, width: 26,),
      5.heightBox,
      titile!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.rounded.size(width, height).shadowSm.white.make();
}
