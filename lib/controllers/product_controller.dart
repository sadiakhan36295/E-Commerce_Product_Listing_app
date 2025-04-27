
import 'package:get/get.dart';
import 'package:productlisting_app/models/ProductModel.dart';
import 'package:productlisting_app/services/Product_service.dart';

class ProductController extends GetxController {
  var products = <ProductModel>[].obs;
  var filteredProducts = <ProductModel>[].obs;
  var searchText = ''.obs;

  @override
  void onInit() {
    super.onInit();
    loadProducts();
  }

  void loadProducts() async {
    products.value = await ProductService.fetchProducts();
    filteredProducts.value = products;
  }

  void searchProducts(String query) {
    searchText.value = query;
    if (query.isEmpty) {
      filteredProducts.value = products;
    } else {
      filteredProducts.value = products.where((p) => p.name.toLowerCase().contains(query.toLowerCase())).toList();
    }
  }

  void sortProductsByPrice(bool highToLow) {
    if (highToLow) {
      filteredProducts.sort((a, b) => b.price.compareTo(a.price));
    } else {
      filteredProducts.sort((a, b) => a.price.compareTo(b.price));
    }
  }
  void sortProductsByRating() {
    filteredProducts.sort((a, b) => b.rating.compareTo(a.rating));
  }
}
