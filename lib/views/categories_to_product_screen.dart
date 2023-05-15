import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/controllers/categories_to_product_screen_controller.dart';
import 'package:get/get.dart';
import 'package:outlet_91/providers/url.dart';
import 'package:outlet_91/views/search_screen.dart';

class CategoriesToProductScreen extends StatelessWidget {
  CategoriesToProductScreen({Key? key}) : super(key: key);

  CategoriesToProductScreenController controller = Get.put(CategoriesToProductScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffe6fbfd),
        elevation: 0,
        title: Obx(() => Text(
              controller.productDetailsList.isEmpty ? 'Categories' : controller.productDetailsList[0]['category']['name'],
              style: GoogleFonts.poppins(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 15),
            )),
        titleSpacing: 10,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Obx(() => controller.productDetailsList.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return ProductRow(
                    imageSrc: Base_url + controller.productDetailsList[index]['image'],
                    brandName: controller.productDetailsList[index]['brand']['name'],
                    productName: controller.productDetailsList[index]['long_name'],
                    rewards: 'rewards',
                    deliveryDate: 'deliveryDate',
                    rating: '4',
                    discount: '30%',
                    price: controller.productDetailsList[index]['price_range'],
                    actualPrice: 'actualPrice',
                    reviewCount: '225');
              },
              separatorBuilder: (BuildContext context, int index) {return const SizedBox(height: 20,);},
              itemCount: controller.productDetailsList.length,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shrinkWrap: true,
            )),
    );
  }
}


class ProductRow extends StatelessWidget {
  String imageSrc, brandName, productName, rewards, deliveryDate, rating, discount, price, actualPrice, reviewCount;
  var onTap;

  ProductRow(
      {Key? key,
        required this.imageSrc,
        required this.brandName,
        required this.productName,
        required this.rewards,
        required this.deliveryDate,
        required this.rating,
        required this.discount,
        required this.price,
        required this.actualPrice,
        required this.reviewCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 139,
          width: MediaQuery.of(context).size.width * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black.withOpacity(0.4), width: 0.4),
          ),
          child: Image.network(
            imageSrc,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sponsored',
                style: GoogleFonts.jost(
                  fontSize: 9,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffAf9D9d),
                ),
              ),
              Text(
                brandName,
                style: GoogleFonts.jost(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                productName,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.jost(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  RatingBarIndicator(
                    rating: double.parse(rating),
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 12.0,
                    direction: Axis.horizontal,
                  ),
                  Text(
                    reviewCount,
                    style: GoogleFonts.jost(
                      fontSize: 9,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '-$discount%',
                    style: GoogleFonts.jost(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffAE172E),
                    ),
                  ),
                  Text(
                    price,
                    style: GoogleFonts.jost(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Text(
                actualPrice,
                style: GoogleFonts.jost(
                  fontSize: 9,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffAf9D9d),
                ),
              ),
              Text(
                rewards,
                style: GoogleFonts.jost(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffAf9D9d),
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/freeDeliveryIcon.png',
                    height: 9,
                    width: 9,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    'Free Delivery ',
                    style: GoogleFonts.jost(
                      fontSize: 9,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffAf9D9d),
                    ),
                  ),
                  Text(
                    deliveryDate,
                    style: GoogleFonts.jost(
                      fontSize: 9,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

