import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/consts/lists.dart';
import 'package:ecommerce/views/home_screen/components/feature_button.dart';
import 'package:ecommerce/views/home_screen/components/featured_products.dart';
import 'package:ecommerce/widgets_common/home_buttons.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchanything,
                  hintStyle: TextStyle(color: textfieldGrey),
                ),
              ),
            ),
    
            10.heightBox,



            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
              
                          
                //swippers brands
                VxSwiper.builder(
                  aspectRatio: 16/9,
                  autoPlay: true,
                  height: 115,
                  enlargeCenterPage: true,
                    itemCount: slidersList.length,
                    itemBuilder: ((context, index) {
                      return Image.asset(
                        slidersList[index], 
                        fit: BoxFit.fill,
                      ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 12)).make();
                    })),
                  
                    10.heightBox,
                  
                    // deals buttons
                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: 
                      List.generate(2, (index) => homeButtons(
                        height: context.screenHeight * 0.15,
                        width: context.screenWidth/2.5,
                        icon: index == 0 ? icTodaysDeal: icFlashDeal,
                        titile: index == 0 ? todayDeal : flashsale,
                      )),),
                  
                  
                      10.heightBox,
                  
                  //Second slider
                  VxSwiper.builder(
                  aspectRatio: 16/9,
                  autoPlay: true,
                  height: 115,
                  enlargeCenterPage: true,
                    itemCount: secondSliderList.length,
                    itemBuilder: ((context, index) {
                      return Image.asset(
                        secondSliderList[index],
                        fit: BoxFit.fill,
                      ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 12)).make();
                    })),
                  
                
                    // Category Button
                    10.heightBox,
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: List.generate(3, (index) => homeButtons(
                        height: context.screenHeight * 0.15,
                        width: context.screenWidth/3.5,
                        icon: index == 0 ? icTopCategories: index ==1 ? icBrands: icTopSeller,
                        titile: index == 0 ? topCategoris : index ==1 ? brand: topSellers ,
                  
                    ))),
                    20.heightBox,
              
                    // Feature Categories
                    Align( alignment: Alignment.centerLeft,
                      child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make()),

                    
                    20.heightBox,
                    SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                      child: Row(children: 
                        List.generate(3, (index) => Column(
                          children: [
                            featureButton(icon: featuredImage1[index], title: featuredTitles1[index]),
                            10.heightBox,
                            // featureButton(),
                            // featureButton(icon: featuredImage2[index], title: featuredTitles2[index]),                          
                          ],
                        )).toList(),
                      ),
                    ), 

                        // 10.heightBox,
                    SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                      child: Row(children: 
                        List.generate(3, (index) => Column(
                          children: [
                            featureButton(icon: featuredImage2[index], title: featuredTitles2[index]),
                          
                          ],
                        )).toList(),
                      ),
                    ),
                    20.heightBox,

                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(color: redColor),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: featuredProduct.text.white.fontFamily(bold).size(18).make()),

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: 
                                List.generate(6, (index) => Column(
                                  children: [
                                   
                                   featuredProducts(icon: imgP1,name: demoLaptopName[index],price: 555),
                                  //  featuredProducts(icon: imgP2,name: "Laptop1",price: 555),
                                   "demo".text.make(),
                                   5.heightBox,
                                  ],
                                  
                                )).toList()
                              ,
                            ),
                          ),

                        ],



                      ),
                    ),





                  ],
                ),
              ),
            ),

                  
          ],
        ),
      ),
    );
  }
}
