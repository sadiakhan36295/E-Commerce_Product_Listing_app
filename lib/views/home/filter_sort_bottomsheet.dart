import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/product_controller.dart';

class FilterSortBottomSheet extends StatelessWidget {
  final ProductController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: SingleChildScrollView( 
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          
            TextField(
              onChanged: (value) => controller.searchProducts(value),
              decoration: InputDecoration(
                hintText: 'Search products...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 20),

           
            Text('Sort By', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ListTile(
              title: Text('Price - High to Low'),
              onTap: () {
                controller.sortProductsByPrice(true);
                Get.back();
              },
            ),
            ListTile(
              title: Text('Price - Low to High'),
              onTap: () {
                controller.sortProductsByPrice(false);
                Get.back();
              },
            ),
            ListTile(
              title: Text('Rating'),
              onTap: () {
                controller.sortProductsByRating();
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
