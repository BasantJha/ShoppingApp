import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import 'custom_divider.dart';


class ReviewTile extends StatelessWidget {
  double rating;
  int likes,dislikes;
  String oneWordReview, fullReview,reviewerName, purchasedOn;
  ReviewTile({Key? key,required this.rating,required this.likes,required this.dislikes,required this.oneWordReview,required this.fullReview,required this.reviewerName,required this.purchasedOn}) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            RatingBarIndicator(
              rating: rating,
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color:kGreenColor,
              ),
              itemCount: 5,
              itemSize: 15,
              direction: Axis.horizontal,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              oneWordReview,
              style: GoogleFonts.jost(fontWeight: FontWeight.w400, fontSize: 10, color: Colors.black),
            ),

          ],
        ),
        const SizedBox(height: 5,),
        Text(fullReview,style: GoogleFonts.jost(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.black),),
        const SizedBox(height: 5,),
        Row(
          children: [
            Text(reviewerName,style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 10,color: Colors.grey[500]),),
            Spacer(),
            Image.asset('assets/icons/like.png',height: 15,width: 15,fit: BoxFit.contain,),
            const SizedBox(width: 5,),
            Text(likes.toString(),style: GoogleFonts.jost(fontSize: 10,fontWeight: FontWeight.w500,color:Colors.grey[500]),),
            const SizedBox(width: 5,),
            Image.asset('assets/icons/dislike.png',height: 15,width: 15,fit: BoxFit.contain,),
            const SizedBox(width: 5,),
            Text(dislikes.toString(),style: GoogleFonts.jost(fontSize: 10,fontWeight: FontWeight.w500,color:Colors.grey[500]),),
            const SizedBox(width: 5,),
          ],
        ),const SizedBox(height: 5,),
        Row(
          children: [
            Icon(Icons.check_circle,color: Colors.black,size: 14,),
            Text(purchasedOn,style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 9,color: Colors.grey[500]),)
          ],
        ),const SizedBox(height: 5,),
        const CustomDivider(),
        const SizedBox(height: 10,)
      ],
    );
  }
}