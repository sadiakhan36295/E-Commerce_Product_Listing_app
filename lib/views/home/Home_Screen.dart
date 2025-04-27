import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:productlisting_app/widgets/product_title.dart';
import 'package:productlisting_app/views/home/filter_sort_bottomsheet.dart'; // <-- Add this import

import '../../controllers/product_controller.dart';

class HomeScreen extends StatelessWidget {
  final ProductController controller = Get.put(ProductController());

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list), // <-- Filter Icon
            onPressed: () {
              showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                builder: (context) => FilterSortBottomSheet(), // <-- Show Bottom Sheet
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              onChanged: (value) => controller.searchProducts(value),
              decoration: InputDecoration(
                hintText: 'Search Anything...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Expanded(
            child: Obx(() {
              return GridView.builder(
                padding: const EdgeInsets.all(12),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 products in one row
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7, // Adjust height
                ),
                itemCount: controller.filteredProducts.length,
                itemBuilder: (context, index) {
                  final product = controller.filteredProducts[index];
                  return ProductTile(product: product);
                },
              );
            }
            ),
          ),
        ],
      ),
    );
  }
}
