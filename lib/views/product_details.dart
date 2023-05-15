import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/utils/colors.dart';
import 'package:outlet_91/utils/constants.dart';
import 'package:outlet_91/views/product_specifications.dart';
import 'package:outlet_91/views/search_screen.dart';
import 'package:outlet_91/views/see_all_reviews.dart';
import 'package:outlet_91/widgets/custom_divider.dart';
import 'package:outlet_91/widgets/vertical_product_tile.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/review_tile.dart';

class ProductDetails extends StatelessWidget {
  String productImage, brandName, productName, productRating, productReviewCount, productPrice, productActualPrice, discount, deliveryDate;
  ProductDetails(
      {Key? key,
      required this.productImage,
      required this.brandName,
      required this.productName,
      required this.productRating,
      required this.productReviewCount,
      required this.productPrice,
      required this.productActualPrice,
      required this.discount,
      required this.deliveryDate})
      : super(key: key);

  final PageController pageController = PageController();

  List resultBrandName = ['Noise', 'Noise', 'Travel Blue', 'Travel Blue'];
  List resultProductName = [
    'Noise True Wireless In Ear Earbuds Earphones Headphones Bluetooth 5.0 With Mic - Imperial Jade',
    'Noise True Wireless In Ear Earbuds Earphones Headphones Bluetooth 5.0 With Mic - Imperial Jade',
    'Pebble  Wireless In Ear Earbuds Earphones Headphones Bluetooth 5.0 With Mic - Imperial Jade',
    'Earphones With Volume Control - Blue'
  ];
  List resultRating = ["5", "3", "3", "3"];
  List resultReviewsCount = ["2437", "2437", "2437", '2437'];
  List resultDiscount = ["60", "60", "60", '50'];
  List resultPrice = ["2500", "2500", "2500", '1180'];
  List resultActualPrice = ["3999", "3999", "3999", '5888'];
  List resultReward = ['get upto 5% back+ reward', 'get upto 5% back+ reward', 'get upto 5% back+ reward', 'get upto 5% back+ reward'];
  List resultDeliveryDate = ['friday,february 15', 'friday,february 15', 'friday,february 15', 'friday,february 15'];

  List highlyRatedImgSrc = ['assets/images/searchImage6.png', 'assets/images/searchImage7.png', "assets/images/searchImage8.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: iconSize,
              color: Colors.black,
            )),
        actions: [
          Image.asset(
            'assets/icons/favorites_outlined.png',
            height: 20,
            width: 20,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/icons/share.png',
            height: 20,
            width: 20,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 245,
            child: PageView(
              allowImplicitScrolling: true,
              physics: const BouncingScrollPhysics(),
              reverse: false,
              controller: pageController,
              children: [
                Image.asset(
                  productImage,
                  height: 245,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  productImage,
                  height: 245,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  productImage,
                  height: 245,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  productImage,
                  height: 245,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
              child: SmoothPageIndicator(
            controller: pageController,
            count: 4,
            effect: const WormEffect(activeDotColor: kYellowColor),
          )),
          Text(
            brandName,
            style: GoogleFonts.jost(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          Text(
            productName,
            style: GoogleFonts.jost(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              RatingBarIndicator(
                rating: double.parse(productRating),
                itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                itemCount: 5,
                itemSize: 15,
                direction: Axis.horizontal,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                productReviewCount,
                style: GoogleFonts.jost(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.black),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Excellent, 9 rating',
                style: GoogleFonts.jost(fontWeight: FontWeight.w400, fontSize: 12, color: kIndigoColor),
              ),
              const SizedBox(
                width: 5,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Product Details',
            style: GoogleFonts.jost(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          Text(
            'Product Description',
            style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
          ),
          ReadMoreText(
            "Style Has A New Address With The Crossbeats Pebble, Elegantly Designed Aesthetically Premium, Talks Stardom All Over The Earbuds. Here Are The Chicest...Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! ",
            trimLines: 2,
            style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey[700]),
            colorClickableText: Colors.pink,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'View more',
            trimExpandedText: 'View less',
            moreStyle: GoogleFonts.jost(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blueAccent),
            lessStyle: GoogleFonts.jost(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blueAccent),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'SKU Name',
            style: GoogleFonts.roboto(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 12),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'WCBEBBLEGREEN_NoColour',
            style: GoogleFonts.roboto(fontWeight: FontWeight.w500, color: Colors.grey[900], fontSize: 10),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'SKU Descriptive Specifications ',
            style: GoogleFonts.jost(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 12),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              UnconstrainedBox(
                child: Container(
                  height: 15,
                  width: 58,
                  decoration: BoxDecoration(color: kGreenColor, borderRadius: BorderRadius.circular(2)),
                  child: Center(
                      child: Text(
                    'IN STOCK',
                    style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize: 10, color: Colors.white),
                  )),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'QTY: 1',
                style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black),
              )
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          const CustomDivider(),
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: 'OPTIONS AVAILABLE: ',
                  style: GoogleFonts.jost(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.black),
                ),
                TextSpan(
                  text: '3 Colors Available',
                  style: GoogleFonts.jost(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.grey[600]),
                )
              ])),
              Text(
                'All Colors',
                style: GoogleFonts.jost(fontWeight: FontWeight.w400, fontSize: 12, color: kYellowColor),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/productDetailsOption1.png',
                height: 70,
                width: 70,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/images/productDetailsOption2.png',
                height: 70,
                width: 70,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/images/productDetailsOption3.png',
                height: 70,
                width: 70,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const CustomDivider(),
          Text(
            'Deal of the Day',
            style: GoogleFonts.jost(fontSize: 14, fontWeight: FontWeight.w500, color: kRedColor),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                "-$discount%   ",
                style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize: 14, color: kRedColor),
              ),
              Text(
                '₹$productPrice',
                style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "MRP: ",
                style: GoogleFonts.jost(fontWeight: FontWeight.w400, fontSize: 10, color: Colors.black),
              ),
              Text(
                '₹$productActualPrice',
                style: GoogleFonts.jost(fontWeight: FontWeight.w400, fontSize: 10, color: Colors.grey[700],decoration: TextDecoration.lineThrough),
              ),
            ],
          ),
          Text(
            'Inclusive of all Taxes',
            style: GoogleFonts.roboto(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
          ),
          Text(
            'Apply & get rs150 back+ reward worth Rs1,150. 3% back on shopping I Amezon Pay ICICI credit card.',
            style: GoogleFonts.jost(fontWeight: FontWeight.w400, fontSize: 10, color: kIndigoColor),
          ),
          const SizedBox(height:10),
          Align(
            alignment: Alignment.centerLeft,
            child: UnconstrainedBox(
              child: Container(
                height: 35,
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                decoration: BoxDecoration(color: kYellowColor,borderRadius: BorderRadius.circular(4)),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductSpecifications(productImage: productImage, brandName: brandName, productName: productName, productRating: productRating, productReviewCount: productReviewCount, productPrice: productPrice, productActualPrice: productActualPrice, discount: discount, deliveryDate: deliveryDate)));
                  },
                  child: Center(child: Text('See Product Details',style: GoogleFonts.jost(fontSize: 14,color:Colors.white,fontWeight: FontWeight.w500),),),
                ),
              ),
            ),
          ),
          const CustomDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Similar sold by other 2 Sellers: ',
                style: GoogleFonts.jost(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
              ),
              Container(
                height: 20,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.black.withOpacity(0.5),
                      width: 0.5,
                    ),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    'View All',
                    style: GoogleFonts.jost(fontWeight: FontWeight.w400, fontSize: 12, color: kIndigoColor),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 330,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return VerticalProductTile(
                    imageSrc: highlyRatedImgSrc[index],
                    brandName: resultBrandName[index],
                    productName: resultProductName[index],
                    rewards: resultReward[index],
                    deliveryDate: resultDeliveryDate[index],
                    rating: resultRating[index],
                    discount: resultDiscount[index],
                    price: resultPrice[index],
                    actualPrice: resultActualPrice[index],
                    reviewCount: resultReviewsCount[index]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 10,
                );
              },
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const CustomDivider(),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            width: double.infinity,
            color: const Color(0xffF0F0F0),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Text(
                          'Delivery to: Sheetal,221001',
                          maxLines: 1,
                          style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
                        ),
                        Text(
                          '11/45 B-3,Narag Colony M.....',
                          maxLines: 1,
                          style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey[500]),
                        ),
                      ],
                    )),
                const Spacer(),
                Container(
                  height: 13,
                  width: 44,
                  decoration: BoxDecoration(color: const Color(0xffD9D9D9), borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'WORK',
                      style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize: 10, color: Colors.grey[800]),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 23,
                  width: 53,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(4), border: Border.all(color: Colors.black.withOpacity(0.5), width: 0.2)),
                  child: Center(
                    child: Text(
                      'Change',
                      style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize: 10, color: kIndigoColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Image.asset(
                'assets/icons/delivery.png',
                height: 15,
                width: 15,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Free Delivery',
                        style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w500, color: kGreenColor),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '₹40',
                        style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey[500]),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        deliveryDate,
                        style: GoogleFonts.jost(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'If ordered within  ',
                        style: GoogleFonts.jost(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.grey[500]),
                      ),
                      Text(
                        '02h 51m 45s',
                        style: GoogleFonts.jost(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios,
                size: 12,
                color: Colors.black,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/icons/returnPolicy.png',
                height: 15,
                width: 15,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                '10 Days Return Policy',
                style: GoogleFonts.jost(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios,
                size: 12,
                color: Colors.black,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/icons/cash-on-delivery.png',
                height: 15,
                width: 15,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Cash On Delivery Available',
                style: GoogleFonts.jost(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios,
                size: 12,
                color: Colors.black,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(15, 8, 0, 8),
            decoration: BoxDecoration(color: Color(0xfff0f0f0), borderRadius: BorderRadius.circular(2)),
            child: Row(
              children: [
                Text(
                  'All Offers & Coupons',
                  style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize: 12, color: Colors.black),
                ),
                Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/icons/Vector.png',
                height: 15,
                width: 15,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                '360 People ordered this in the 7 Days',
                style: GoogleFonts.jost(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                height: 36,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.black.withOpacity(0.5), width: 0.5),
                    bottom: BorderSide(color: Colors.black.withOpacity(0.5), width: 0.5),
                    left: BorderSide(color: Colors.black.withOpacity(0.5), width: 0.5),
                  ),
                ),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('assets/icons/viewSimilar.png',height: 17,width: 17,fit: BoxFit.contain,),
                          Text('View Similar',style: GoogleFonts.jost(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black),)
                        ],
                      ),
                    ),
              )),
              Expanded(
                  child: Container(
                height: 36,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.black.withOpacity(0.5), width: 0.5),
                    bottom: BorderSide(color: Colors.black.withOpacity(0.5), width: 0.5),
                    left: BorderSide(color: Colors.black.withOpacity(0.5), width: 0.5),
                    right: BorderSide(color: Colors.black.withOpacity(0.5), width: 0.5),
                  ),
                ),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('assets/icons/viewCompare.png',height: 17,width: 17,fit: BoxFit.contain,),
                          Text('Add to Compare',style: GoogleFonts.jost(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black),)
                        ],
                      ),
                    ),
              )),
            ],
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
              Text('Ratings & Reviews',style: GoogleFonts.jost (fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black),),
              const Spacer(),
              Container(
                height: 20,width: 70,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.black.withOpacity(0.5),width: 0.5)),
                child: Center(child: Text('Rate Product',style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 11,color: kIndigoColor),),),
              )
            ],
          ),
          const SizedBox(height: 4,),
          Row(
            children: [
              Text(productRating,style: GoogleFonts.jost(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.black),),
              const Icon(Icons.star,color: Colors.black,size: 15,)
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Text('1,379 Ratings & 218 Reviews',style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 10,color: Colors.black),),
              Spacer(),
              TextButton(child: Text('See all Reviews',style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 10,color: kIndigoColor)), onPressed: () { Get.to(()=>SeeAllReviews()); },),
            ],
          ),

          Row(
            children: [
              Expanded(
                  flex:2,
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(border: Border(right: BorderSide(color: Colors.black,width: 0.5))),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        children: [
                          ReviewPercentBar(starNum: 5, reviewNum: 810, percent: 1),
                          ReviewPercentBar(starNum: 4, reviewNum: 33, percent: 1),
                          ReviewPercentBar(starNum: 3, reviewNum: 88, percent: 0.4),
                          ReviewPercentBar(starNum: 2, reviewNum: 34, percent: 0.3),
                          ReviewPercentBar(starNum: 1, reviewNum: 114, percent: 0.1),
                        ],
                      ),
                    ),
                  )

              ),
              Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.only(left: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReviewCircularProgressBar(centerText: '4.4', footerText: 'Sound Quality', percent: 0.8),
                        ReviewCircularProgressBar(centerText: '4.3', footerText: 'Bass', percent: 0.6),
                        ReviewCircularProgressBar(centerText: '4.3', footerText: 'Design & Build', percent: 0.5),
                        ReviewCircularProgressBar(centerText: '3.0', footerText: 'Battery Backup', percent: 0.7),
                      ],
                    ),
                  ))
            ],
          ),
          const SizedBox(height: 20,),
          ReviewTile(rating: double.parse(productRating), likes: 480, dislikes: 3, oneWordReview: 'Wonderful', fullReview: 'This product is amazing 🤩.. Quality is 👌👌👌. I like this ear buds 😇.. ', reviewerName: 'Rajesh Patel, Vadodara', purchasedOn: 'Verified Purchase. Jan,2022'),
          ReviewTile(rating: 3, likes: 13, dislikes: 3, oneWordReview: 'Does the job', fullReview: 'Does the job', reviewerName: 'Rajesh Patel, Vadodara', purchasedOn: 'Verified Purchase. Jan,2022'),
          ReviewTile(rating: 3, likes: 13, dislikes: 3, oneWordReview: 'Does the job', fullReview: 'Does the job', reviewerName: 'Rajesh Patel, Vadodara', purchasedOn: 'Verified Purchase. Jan,2022'),
          ReviewTile(rating: double.parse(productRating), likes: 480, dislikes: 3, oneWordReview: 'Wonderful', fullReview: 'This product is amazing 🤩.. Quality is 👌👌👌. I like this ear buds 😇.. ', reviewerName: 'Rajesh Patel, Vadodara', purchasedOn: 'Verified Purchase. Jan,2022'),
          Text('FREQUENTLY BOUGHT TOGETHER',style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black),),
          const SizedBox(height: 15,),
          FrequentlyBoughtTile(imageSrc: 'assets/images/frequentlyBought1.png', productName: 'HP 14s, 11th Gen Intel Core i3-1115G4, 8GB RAM', price: '₹23,547', actualPrice: '₹9995', discount: '(60%OFF)', rating: 4.4),
          FrequentlyBoughtTile(imageSrc: 'assets/images/frequentlyBought2.png', productName: 'HP 22s, 11th Gen Intel Core i5-1115G4, 8GB RAM', price: '₹10,000', actualPrice: '₹28,490', discount: '(₹9995 OFF)', rating: 4.3),
          const SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            width: double.infinity,
            color: Colors.grey[100],
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Total PRICe( 2 items ):',style: GoogleFonts.jost(fontWeight: FontWeight.w700,color: Colors.black,fontSize: 12),),
                    Row(
                      children: [
                        Text('₹13,547',style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black),),
                        const SizedBox(width: 10,),
                        Text('₹28,490',style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.grey[500]),),
                        const SizedBox(width: 25,),
                        Text('(60%OFF)',style: GoogleFonts.jost(fontSize: 12,fontWeight: FontWeight.w500,color:kYellowColor),),
                        const SizedBox(width: 50,),
                      ],
                    )
                  ],
                )),
                Container(
                  height: 24,
                  color: kYellowColor,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Center(child: Text('Add to Cart',style: GoogleFonts.jost(fontSize: 12,fontWeight: FontWeight.w500,color:Colors.white),),),
                )
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Center(child: Text('FAQ',style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black,decoration: TextDecoration.underline),)),
          const SizedBox(height: 15,),
          FaqTile(question: 'How long is this site live?'),
          FaqTile(question: 'How can I migrate to another site?'),
          FaqTile(question: 'Can I Change the domain you give me?'),
          const SizedBox(height: 20,),
          Center(child: Text('Recommended Product',style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black,decoration: TextDecoration.underline),)),
          const SizedBox(height: 15,),
          Row(
            children: [
              RecommendedTile(imageSrc: 'assets/images/recommendedImage1.png', productName: 'Mivi Duopods A25 Bluetooth Truly Wireless In Ear Earbuds ', actualPrice: '₹ 2999', price: '₹ 1455', discount: '50% OFF'),const SizedBox(width: 5,),
              RecommendedTile(imageSrc: 'assets/images/recommendedImage2.png', productName: 'Mivi Duopods A25 Bluetooth Truly Wireless In Ear Earbuds ', actualPrice: '₹ 2999', price: '₹ 1455', discount: '50% OFF'),const SizedBox(width: 5,),
              RecommendedTile(imageSrc: 'assets/images/recommendedImage3.png', productName: 'Mivi Duopods A25 Bluetooth Truly Wireless In Ear Earbuds ', actualPrice: '₹ 2999', price: '₹ 1455', discount: '50% OFF'),const SizedBox(width: 5,),
            ],
          ),
          const SizedBox(height: 30,)
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Container(
              height: 49,
              decoration: BoxDecoration(color: kAddToCartColor,borderRadius: BorderRadius.circular(2)),
              child: Center(child: Text('Add To Cart',style: GoogleFonts.jost(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),)),
            ),
          ),
          const SizedBox(width: 10,),
          Expanded(
            child: Container(
              height: 49,
              decoration: BoxDecoration(color:kBuyNowColor,borderRadius: BorderRadius.circular(2)),
              child: Center(child: Text('Buy Now',style: GoogleFonts.jost(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),)),
            ),
          ),
        ],
      ),
    );
  }
}




class ReviewPercentBar extends StatelessWidget {
  int starNum,reviewNum;
  double percent;

  ReviewPercentBar({Key? key,required this.starNum,required this.reviewNum,required this.percent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      animation: true,
        animationDuration:3000,
      barRadius: Radius.circular(5),
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(starNum.toString(),style: GoogleFonts.jost(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.black),),
          Icon(Icons.star,size: 14,color: Colors.black,),
        ],
      ),
      trailing: Text(reviewNum.toString(),style: GoogleFonts.jost(fontWeight: FontWeight.w500,color: Colors.grey[500],fontSize: 10),),
      percent: percent,
      backgroundColor: Colors.grey,
      progressColor: starNum==2?kYellowColor:starNum==1?const Color(0xffF39797):kGreenColor,
      lineHeight: 5,
    );
  }
}


class ReviewCircularProgressBar extends StatelessWidget {
  String centerText,footerText;
  double percent;
  ReviewCircularProgressBar({Key? key,required this.centerText,required this.footerText,required this.percent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularPercentIndicator(
          radius: 25.0,
          lineWidth: 4.0,
          percent: percent,
          reverse: true,
          center: Text("4.4",style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 10,color: Colors.black),),
          progressColor: kGreenColor,
          animation : true,
          animationDuration : 3000,
        ),
        Text(footerText,style:GoogleFonts.jost(fontSize: 8,fontWeight: FontWeight.w400,color: Colors.black) ,)
      ],
    );
  }
}





class FrequentlyBoughtTile extends StatelessWidget {
  String imageSrc,productName,price,actualPrice, discount;
  double rating;
   FrequentlyBoughtTile({Key? key,required this.imageSrc,required this.productName,required this.price, required this.actualPrice,required this.discount,required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Row(
          children: [
            Image.asset(imageSrc,height: 72,width: 70,fit: BoxFit.contain,),
            const SizedBox(width: 8,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productName,style: GoogleFonts.jost(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black),),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(price,style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black),),
                    const SizedBox(width: 10,),
                    Text(actualPrice,style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.grey[500]),),
                    const SizedBox(width: 25,),
                    Text(discount,style: GoogleFonts.jost(fontSize: 12,fontWeight: FontWeight.w500,color:kYellowColor),),
                    const SizedBox(width: 50,),
                    Text(rating.toString(),style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black),),
                  ],
                )
              ],
            ),


          ],
        );
  }
}

class FaqTile extends StatelessWidget {
  String question;
  FaqTile({Key? key,required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: 40,
                decoration: BoxDecoration(border: Border.all(color: Colors.black.withOpacity(0.4),width: 0.5),borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(question,maxLines: 1,overflow: TextOverflow.ellipsis,style: GoogleFonts.jost(
                      fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey[600]
                  ),),
                ),
              ),
            ),
            const SizedBox(width: 5,),
            Container(
              padding: const EdgeInsets.all(10),
              height: 40,
              decoration: BoxDecoration(color: Colors.grey[300],borderRadius: BorderRadius.circular(5)),

              child: Icon(Icons.add,size: 20,color:Colors.black),
            )
          ],
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}


class RecommendedTile extends StatelessWidget {
  String imageSrc,productName,actualPrice,price,discount;
  RecommendedTile({Key? key,required this.imageSrc,required this.productName,required this.actualPrice, required this.price,required this.discount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      height: 194,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imageSrc,height: 116,width: double.infinity,fit: BoxFit.contain,),
          Text(productName,maxLines: 3,overflow: TextOverflow.ellipsis,style: GoogleFonts.jost(fontWeight: FontWeight.w400,color:Colors.white,fontSize: 8),),
          const SizedBox(height:3,),
          Row(
            children: [
              Text(actualPrice,style: GoogleFonts.jost(fontSize: 10,fontWeight: FontWeight.w500,color: Colors.white,decoration: TextDecoration.lineThrough),),
              Text(price,style: GoogleFonts.jost(fontSize: 10,fontWeight: FontWeight.w500,color: Colors.white,),),
            ],
          ),
          const SizedBox(height: 8,),
          Text(discount,style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 9,color:kYellowColor),)
        ],
      ),
    ));
  }
}






