import 'package:ecommerce/consts/consts.dart';

Widget ourButton({bgcolor,textcolor, onPress,required String buttonName}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
     backgroundColor: bgcolor,
     padding: const EdgeInsets.all(12),
    ),
      onPressed: (() {
        onPress;
      }), 
      child: buttonName.text.color(textcolor).fontFamily(bold).make(),
      );
}
