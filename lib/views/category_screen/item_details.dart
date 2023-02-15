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
                      autoPlay: false,
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
                    "\$999"
                        .text
                        .color(redColor)
                        .fontFamily(bold)
                        .size(18)
                        .make(),
                    10.heightBox,

                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Sellers".text.white.fontFamily(semibold).make(),
                              5.heightBox,
                              "In House Brands"
                                  .text
                                  .fontFamily(semibold)
                                  .make(),
                            ],
                          ),
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.message_rounded,
                            color: darkFontGrey,
                          ),
                        ),
                      ],
                    )
                        .box
                        .height(70)
                        .padding(const EdgeInsets.symmetric(horizontal: 16))
                        .color(textfieldGrey).roundedSM
                        .make(),
                    20.heightBox,

                    // 
                    // 
                    // 

                    // Color selection
                    
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Color".text.color(textfieldGrey).make(),
                              ),
                              Row(
                                    children: List.generate(
                                    3,
                                    (index) => VxBox()
                                        .size(40, 40)
                                        .roundedFull
                                        .color(Vx.randomPrimaryColor)
                                        .margin(const EdgeInsets.symmetric(
                                            horizontal: 6))
                                        .make(),
                                        ),
                              )
                            ],
                          ).box.padding(const EdgeInsets.all(8)).make(),


                            // quantity row
                            // 
                        Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Color".text.color(textfieldGrey).make(),
                              ),
                              Row(
                           
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.remove)),
                                  "0".text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                                  IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                                  10.widthBox,
                                  "(0 available)".text.color(textfieldGrey).make(),
                                ],
                              ),
                            ],
                          ).box.roundedSM.padding(const EdgeInsets.all(8)).make(),


                          // Total Row

                           Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Total".text.color(textfieldGrey).make(),
                              ),
                              "\$0.00".text.color(redColor).size(16).fontFamily(bold).make(),
                             

                            ],
                          ).box.padding(const EdgeInsets.all(8)).make(),



                        ],
                      ).box.white.roundedSM.shadowSm.make(),
                    ),
                    20.heightBox,

                  

                      
                        // Description section
                        "Description".text.color(darkFontGrey).fontFamily(semibold).make(),
                        10.heightBox,
                        "This is a dummy item and dummy description here.....".text.color(darkFontGrey).make(),
                        ListView(
                          shrinkWrap: true,

                          children: List.generate(itemDetailButtonList.length, (index) =>  ListTile(
                            title: itemDetailButtonList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                            trailing: const Icon(Icons.arrow_forward),


                          ),),
                          

                          
                         
                        ),


                        20.heightBox,


                        // products may you like
                        productsyoumaylike.text.fontFamily(bold).size(16).color(darkFontGrey).make(),
                        20.heightBox,


                   
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




// 