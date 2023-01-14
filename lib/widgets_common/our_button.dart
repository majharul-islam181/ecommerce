import 'package:ecommerce/consts/consts.dart';

Widget ourButton({bgcolor,textcolor, onPress,title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
     backgroundColor: bgcolor,
     padding: const EdgeInsets.all(12),
    ),
      onPressed: (() {
        onPress;
      }), 
      child: login.text.color(textcolor).fontFamily(bold).make(),
      );
}
