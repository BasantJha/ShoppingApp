import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/utils/constants.dart';
import 'package:outlet_91/widgets/review_tile.dart';

class SeeAllReviews extends StatelessWidget {
  const SeeAllReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back,size: iconSize,color: Colors.black,),
        ),
        title: Text('See All Reviews',style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 24,color: Colors.black),),
        centerTitle: true,
      ),
      body: ListView.separated(
        shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemBuilder: (context,index){
          return ReviewTile(rating: 3, likes: 480, dislikes: 13, oneWordReview: 'Does the job', fullReview: 'This product is amazing 🤩.. Quality is 👌👌👌. I like this ear buds 😇.. ', reviewerName: 'Rajesh Patel, Vadodara', purchasedOn: 'Verified Purchase. Jan,2022');
          }, 
          separatorBuilder: (context,index){return const SizedBox(height: 15,);}, 
          itemCount: 9),
    );
  }
}
