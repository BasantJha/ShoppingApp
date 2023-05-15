import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/utils/constants.dart';
import 'package:outlet_91/views/product_details.dart';
import 'package:outlet_91/widgets/custom_text_field.dart';

import '../widgets/prefix_icon.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List resultImgSrc = ['assets/images/searchImage2.png', 'assets/images/searchImage3.png', 'assets/images/searchImage4.png', 'assets/images/searchImage10.png'];
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
  late TextEditingController searchController;

  bool showSearchResults = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchController = TextEditingController();
    searchController.addListener(() {
      final showSearchResults = searchController.text.isNotEmpty;
      setState(() {
        this.showSearchResults = showSearchResults;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: iconSize,
            )),
        titleSpacing: 0,
        title: SizedBox(
          height: 45,
          child: CustomTextField(
            controller: searchController,
            isFilled: true,
            filledColor: Colors.white,
            hintText: 'Search',
            validator: null,
            hintTextColor: Colors.black,
            borderRadius: 10,
            textColor: Colors.black,
            prefixIcon: PrefixIcon(
              imgSrc: 'assets/icons/search.png',
            ),
            suffixIcon: showSearchResults
                ? Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            showSearchResults = false;
                            searchController.clear();
                          });
                        },
                        child: Image.asset(
                          'assets/icons/x-mark.png',
                          height: 20,
                          width: 20,
                          fit: BoxFit.contain,
                          color: Colors.black,
                        )),
                  )
                : null,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              'assets/icons/microphone.png',
              color: Colors.white,
            ),
          )
        ],
      ),
      body: showSearchResults
          ? ListView(
              padding: EdgeInsets.all(20),
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/searchScreenImage1.png',
                      height: 137,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    )),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Results',
                      style: GoogleFonts.jost(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 18),
                    ),
                    Image.asset(
                      'assets/icons/filterIcon.png',
                      height: 10,
                      width: 15,
                      fit: BoxFit.fill,
                    )
                  ],
                ),
                ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductDetails(productImage: resultImgSrc[index], brandName: resultBrandName[index], productName: resultProductName[index], productRating: resultRating[index], productReviewCount: resultReviewsCount[index], productPrice: resultPrice[index], productActualPrice: resultActualPrice[index], discount: resultDiscount[index], deliveryDate: resultDeliveryDate[index]))),
                        child: ResultRow(
                            imageSrc: resultImgSrc[index],
                            brandName: resultBrandName[index],
                            productName: resultProductName[index],
                            rewards: resultReward[index],
                            deliveryDate: resultDeliveryDate[index],
                            rating: resultRating[index],
                            discount: resultDiscount[index],
                            price: resultPrice[index],
                            actualPrice: resultActualPrice[index],
                            reviewCount: resultReviewsCount[index]),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 20,
                      );
                    },
                    itemCount: resultImgSrc.length),
                const SizedBox(
                  height: 15,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/searchImage5.png',
                      height: 137,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Highly Rated',
                  style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.black),
                ),
                Text(
                  'Sponsored Based on star rating and number of Coustmer Ratings',
                  style: GoogleFonts.jost(fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xff937A7A)),
                ),
                SizedBox(
                  height: 330,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductDetails(
                            productImage: highlyRatedImgSrc[index],
                            brandName: resultBrandName[index],
                            productName: resultProductName[index],
                            productRating: resultRating[index],
                            productReviewCount: resultReviewsCount[index],
                            productPrice: resultPrice[index],
                            productActualPrice: resultActualPrice[index],
                            discount: resultDiscount[index],
                            deliveryDate: resultDeliveryDate[index]))),
                        child: HighlyRatedRow(
                            imageSrc: highlyRatedImgSrc[index],
                            brandName: resultBrandName[index],
                            productName: resultProductName[index],
                            rewards: resultReward[index],
                            deliveryDate: resultDeliveryDate[index],
                            rating: resultRating[index],
                            discount: resultDiscount[index],
                            price: resultPrice[index],
                            actualPrice: resultActualPrice[index],
                            reviewCount: resultReviewsCount[index]),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/searchImage9.png',
                      height: 137,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    )),
                Text(
                  'More Result',
                  style: GoogleFonts.jost(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.black),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductDetails(productImage: resultImgSrc[3], brandName: resultBrandName[3], productName: resultProductName[3], productRating: resultRating[3], productReviewCount: resultReviewsCount[3], productPrice: resultPrice[3], productActualPrice: resultActualPrice[3], discount: resultDiscount[3], deliveryDate: resultDeliveryDate[3]))),
                        child: ResultRow(
                            imageSrc: resultImgSrc[3],
                            brandName: resultBrandName[3],
                            productName: resultProductName[3],
                            rewards: resultReward[3],
                            deliveryDate: resultDeliveryDate[3],
                            rating: resultRating[3],
                            discount: resultDiscount[3],
                            price: resultPrice[3],
                            actualPrice: resultActualPrice[3],
                            reviewCount: resultReviewsCount[3]),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 20,
                      );
                    },
                    itemCount: 1),
              ],
            )
          : Center(
              child: Text(
                'Search something to see the products of that category!',
                style: GoogleFonts.jost(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
              ),
            ),
    );
  }
}

class ResultRow extends StatelessWidget {
  String imageSrc, brandName, productName, rewards, deliveryDate, rating, discount, price, actualPrice, reviewCount;
  var onTap;

  ResultRow(
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
          child: Image.asset(
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
                    '₹ $price',
                    style: GoogleFonts.jost(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Text(
                '₹ $actualPrice',
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

class HighlyRatedRow extends StatelessWidget {
  String imageSrc, brandName, productName, rewards, deliveryDate, rating, discount, price, actualPrice, reviewCount;
  var onTap;

  HighlyRatedRow({
    Key? key,
    required this.imageSrc,
    required this.brandName,
    required this.productName,
    required this.rewards,
    required this.deliveryDate,
    required this.rating,
    required this.discount,
    required this.price,
    required this.actualPrice,
    required this.reviewCount,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 139,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black.withOpacity(0.4), width: 0.4),
              ),
              child: Image.asset(
                imageSrc,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
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
                  '₹ $price',
                  style: GoogleFonts.jost(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Text(
              '₹ $actualPrice',
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/freeDeliveryIcon.png',
                  height: 9,
                  width: 9,
                  fit: BoxFit.contain,
                ),
                Expanded(
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: 'Free Delivery ',
                      style: GoogleFonts.jost(
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffAf9D9d),
                      ),
                    ),
                    TextSpan(
                      text: deliveryDate,
                      style: GoogleFonts.jost(
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ])),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
