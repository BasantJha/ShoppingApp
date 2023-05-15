import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/widgets/custom_text_field.dart';
import 'package:outlet_91/widgets/prefix_icon.dart';

import '../../widgets/custom_drawer.dart';

class BlogScreen extends StatefulWidget {
  BlogScreen({Key? key}) : super(key: key);

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  final TextEditingController searchController = TextEditingController();
  bool expand=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const CustomDrawer(),
      appBar: AppBar(automaticallyImplyLeading: false,backgroundColor: Colors.white,elevation: 0,),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Image.asset('assets/images/outletLogo.png',height: 50,width: 50,fit: BoxFit.contain,),
          const SizedBox(height: 10,),
          Image.asset('assets/images/outletText.png',height: 35,width: 150,fit: BoxFit.contain,color: Colors.black,),
          const SizedBox(height: 5,),
          Center(child: Text('A New Revolution. A new Perspective.',style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black),),),
          const SizedBox(height: 10,),
          CustomTextField(controller: searchController, validator: null,hintText: 'Search posts',textColor: Colors.black,hintTextColor: Colors.black,borderRadius: 8,filledColor: Colors.white,borderColor: Colors.black,suffixIcon: PrefixIcon(imgSrc: 'assets/icons/search.png'),),
          const SizedBox(height: 15,),
          Text('Recent Posts',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
          BlogTile(imageSrc: 'assets/images/blogImag1.png', titleText: '57 Crafty Valentine’s Nail Ideas To Fall In Love With For V-Day', date: 'August 24,2022', greyText: 'When I’m browsing for clothes online, it can be tricky to tell which items look great on the hanger but terrible in real life. ', expandedText: '2022 brought so many product recommendations my bank account wishes I hadn’t seen. My entire TikTok FYP is packed with makeup routines and the next hottest product. Everyone tells me I must have this product, so I tell my bank I must have that product. '),
          BlogTile(imageSrc: 'assets/images/blogImage2.png', titleText: '10 Products To Keep In 2023 ..', date: 'August 26,2022', greyText: "I want to feel as confident as a supermodel even if I don’t have their throngs of makeup artists and hair stylists. If they’re plugging a product, I’m probably gonna try it.", expandedText: '2022 brought so many product recommendations my bank account wishes I hadn’t seen. My entire TikTok FYP is packed with makeup routines and the next hottest product. ')
        ],
      )
    );
  }
}




class BlogTile extends StatefulWidget {
  String imageSrc,titleText,date,greyText,expandedText;
  BlogTile({Key? key,required this.imageSrc,required this.titleText,required this.date,required this. greyText,required this. expandedText}) : super(key: key);

  @override
  State<BlogTile> createState() => _BlogTileState();
}

class _BlogTileState extends State<BlogTile> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 5,),
        Image.asset(widget.imageSrc,height: 147,width: double.infinity,fit: BoxFit.fill,),
        const SizedBox(height: 5,),
        Text(widget.titleText,style: GoogleFonts.jost(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.date,style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black),),
            Text('Comment',style: GoogleFonts.jost(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey[800]),),
          ],
        ),
        Text(widget.greyText,style: GoogleFonts.jost(fontWeight: FontWeight.w300,fontSize: 14,color: Colors.grey[700]),),
        const SizedBox(height: 20,),
        isExpanded?Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.expandedText,style: GoogleFonts.jost(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black),),
            const SizedBox(height: 20,),
          ],
        ):Container(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),border: Border.all(color: Colors.black.withOpacity(0.5),width: 0.5)),
          child: MaterialButton(
              onPressed: (){
                setState(() {
                  isExpanded=!isExpanded;
                });
              },
              child: Text(!isExpanded?'CONTINUE READING':'READ LESS',style: GoogleFonts.jost(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),)),
        ),
        const SizedBox(height: 20,)
      ],
    );
  }
}

