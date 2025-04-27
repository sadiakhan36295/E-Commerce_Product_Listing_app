import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/product_controller.dart';

class SearchBarWidget extends StatelessWidget {
  final ProductController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        controller.searchProducts(value);
      },
      decoration: InputDecoration(
        hintText: "Search anything...",
        prefixIcon: Icon(Icons.search),
        contentPadding: EdgeInsets.all(0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.grey.shade200,
      ),
    );
  }
}
