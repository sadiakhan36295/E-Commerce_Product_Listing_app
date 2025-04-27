import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Important because you're using GetX Controller
import 'package:productlisting_app/views/home/home_screen.dart'; // ✅ Correct import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // 
      debugShowCheckedModeBanner: false,
      title: 'Product Listing App',
      home: HomeScreen(), // 
    );
  }
}
