import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class VerticalProductTile extends StatelessWidget {
  String imageSrc, brandName, productName, rewards, deliveryDate, rating, discount, price, actualPrice, reviewCount;


  VerticalProductTile({
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

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}