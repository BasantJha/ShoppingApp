import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outlet_91/controllers/sub_categories_screen_controller.dart';
import 'package:outlet_91/providers/url.dart';
import 'package:outlet_91/widgets/custom_appbar.dart';
import 'package:get/get.dart';

import 'categories_to_product_screen.dart';

class SubCategoriesScreen extends StatelessWidget {
  SubCategoriesScreen({Key? key}) : super(key: key);

  SubCategoriesScreenController controller = Get.put(SubCategoriesScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text(controller.subCategoriesList[0]['name']),)
        appBar: AppBar(
          backgroundColor: const Color(0xffe6fbfd),
          elevation: 0,
          title: Obx(() => Text(
                controller.subCategoriesList.isEmpty ? 'Categories' : controller.subCategoriesList[0]['parent_category']['name'],
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
        body: Obx(
          () => controller.subCategoriesList.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : GridView.builder(
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (controller.subCategoriesList[index]['show_product_after_this']) {
                          Get.to(() => CategoriesToProductScreen(), arguments: [
                            {'id': controller.subCategoriesList[index]['_id']}
                          ]);
                        } else {
                          Get.off(() => SubCategoriesScreen(),
                              arguments: [
                                {'id': controller.subCategoriesList[index]['_id']}
                              ],
                              preventDuplicates: false);
                        }
                        // ?print('CategoriesToProduct'):print('subCate');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.black.withOpacity(0.4), width: 0.4)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Image.network(
                              Base_url + controller.subCategoriesList[index]['image'],
                              fit: BoxFit.contain,
                            )),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              controller.subCategoriesList[index]['name'],
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 12, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: controller.subCategoriesList.length,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10, childAspectRatio: 3 / 2),
                ),
        ));
  }
}
