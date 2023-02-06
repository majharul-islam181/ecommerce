// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/consts/lists.dart';
import 'package:ecommerce/views/category_screen/item_details.dart';
import 'package:ecommerce/views/home_screen/components/featured_products.dart';
import 'package:ecommerce/widgets_common/bg_widget.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: List.generate(
                    6,
                    (index) => "Baby Clothing"
                        .text
                        .makeCentered()
                        .box
                        .white
                        .roundedSM
                        .margin(const EdgeInsets.all(8))
                        .size(150, 40)
                        .make()),
              ),
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 4,
                    // crossAxisSpacing: 4,
                    mainAxisExtent: 220,
                    ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [

                      featuredProducts(name: demoLaptopName[index], icon: imgP5, price: 5555).onTap(() { 
                        Get.to(()=> ItemDetails(title: demoLaptopName[index]));
                      }),
                    
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
