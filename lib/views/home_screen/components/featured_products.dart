import 'package:ecommerce/consts/consts.dart';

Widget featuredProducts({required String? name,required icon,required price}) {
  return Column(
    children: [
      Image.asset(icon, width: 150, fit: BoxFit.cover,),
      10.heightBox,
      name!.text.fontFamily(semibold).make(),

      10.heightBox,
      ("\$$price").text.color(redColor).fontFamily(semibold).make(),
    ],
  ).box.width(200).margin(const EdgeInsets.symmetric(horizontal: 4)).padding(const EdgeInsets.all(4)).white.roundedSM.outerShadowSm.make();
}
