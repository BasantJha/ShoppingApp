import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
            onTap: ()=>Get.back(),
            child: Icon(Icons.arrow_back,size: iconSize,color: Colors.black,)),
        centerTitle: true,
        title: Text('Terms & Conditions',style: GoogleFonts.jost(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.black),),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        shrinkWrap: true,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset('assets/required images/terms&conditionsImage.png',height: 221,width: double.infinity,fit: BoxFit.contain,),
          ),
          const SizedBox(height: 20,),
          Text('Welcome to Outlet 91 ! My company and its associates provide their services to you subject to the following conditions.',textAlign: TextAlign.center,style: GoogleFonts.jost(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.black),),
          const SizedBox(height: 20,),
          SectionTile(sectionNum: '1',headingText: 'Online STORM TERMS',summaryText: 'A terms and conditions agreement outlines the website administrator’s rules regarding user behavior and provides information about the actions the website administrator can and will perform. Essentially, your terms and conditions text is a contract between your website and its users. In the event of a legal dispute, arbitrators will look at it to determine whether each party acted within their rights.',),
          SectionTile(sectionNum: '2',headingText: 'GENERAL CONDITIONS',summaryText: 'A terms and conditions agreement outlines the website administrator’s rules regarding user behavior and provides information about the actions the website administrator can and will perform. Essentially, your terms and conditions text is a contract between your website and its users. In the event of a legal dispute, arbitrators will look at it to determine whether each party acted within their rights.',),
          SectionTile(sectionNum: '3',headingText: 'ACCURACY, COMPLETENESS AND TIMELESS OF INFORMATION',summaryText: 'A terms and conditions agreement outlines the website administrator’s rules regarding user behavior and provides information about the actions the website administrator can and will perform. Essentially, your terms and conditions text is a contract between your website and its users. In the event of a legal dispute, arbitrators will look at it to determine whether each party acted within their rights.',),

        ],
      ),
    );
  }
}


class SectionTile extends StatelessWidget {
  String sectionNum,headingText,summaryText;
  SectionTile({Key? key,required this.sectionNum,required this.headingText,required this.summaryText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(child: Divider(thickness: 0.5,color: Colors.grey[600],)),
            Container(
              height: 27,
              width: 152,
              decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.black.withOpacity(0.5),width: 0.5),borderRadius: BorderRadius.circular(4)),
              child: Center(child: Text('SECTION-$sectionNum',style: GoogleFonts.jost(fontSize: 12,fontWeight: FontWeight.w500,color: const Color(0xffF48020)),)),
            ),
            Expanded(child: Divider(thickness: 0.5,color: Colors.grey[600],)),
          ],
        ),
        const SizedBox(height: 5,),
        Center(
          child: Text(headingText,textAlign: TextAlign.center,style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black),),
        ),
        const SizedBox(height: 10,),
        Text(summaryText,textAlign: TextAlign.justify,style: GoogleFonts.jost(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black),),
        const SizedBox(height: 20,),
      ],
    );
  }
}

