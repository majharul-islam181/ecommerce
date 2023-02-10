// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/widgets_common/our_button.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
          title: title!.text.fontFamily(bold).color(darkFontGrey).make(),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
          ]),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // swiper section
                    VxSwiper.builder(
                      itemCount: 3,
                      autoPlay: true,
                      height: 300,
                      aspectRatio: 16 / 9,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          imgFc5,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                    10.heightBox,

                    // title and details section
                    //

                    title!.text
                        .size(16)
                        .color(darkFontGrey)
                        .fontFamily(bold)
                        .make(),
                    //
                    // rating

                    10.heightBox,

                    VxRating(
                      onRatingUpdate: (value) {},
                      normalColor: textfieldGrey,
                      selectionColor: golden,
                      count: 5,
                      size: 25,
                      stepInt: true,
                    ),
                    10.heightBox,
                    "\$999".text.color(redColor).fontFamily(bold).size(18).make(),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ourButton(
                buttonName: "Add to cart",
                bgcolor: redColor,
                onPress: () {},
                textcolor: whiteColor,
                ),
          )
        ],
      ),
    );
  }
}
