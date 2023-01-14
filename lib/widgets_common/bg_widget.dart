import 'package:ecommerce/consts/consts.dart';

Widget bgWidget(Widget? child1) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imgBackground),
        fit: BoxFit.fill,
      ),
    ),
    child: child1,

  );
}
