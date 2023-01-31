import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/consts/lists.dart';
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
