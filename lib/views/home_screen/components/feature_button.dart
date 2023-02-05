import 'package:ecommerce/consts/consts.dart';

Widget featureButton() {
  return Row(
    children: [
      Image.asset(imgS1, width: 40, fit: BoxFit.fill,),
      10.widthBox,
      womenDress.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.width(200).margin(const EdgeInsets.symmetric(horizontal: 4)).padding(const EdgeInsets.all(4)).white.roundedSM.outerShadowSm.make();
}
