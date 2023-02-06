// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce/consts/consts.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({
    Key? key,
   required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.make(),
        
        actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
      ]),
      body: Container(
        color: redColor,
      ),
    );
  }
}
