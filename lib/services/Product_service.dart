import 'package:productlisting_app/models/ProductModel.dart';



class ProductService {
  static Future<List<ProductModel>> fetchProducts() async {
    await Future.delayed(Duration(seconds: 1)); // simulate network delay
    return [
      ProductModel(
        name: "Opna Women's Short Sleeve ",
        imageUrl: "https://fakestoreapi.com/img/71z3kpMAYsL._AC_UY879_.jpg",
        price: 59.99,
        oldPrice: 79.99,
        discount: 25,
        rating: 4.5,
        reviews: 120,
        isFavorite: false,
        isOutOfStock: false,
      ),
      ProductModel(
        name: "MBJ Women's Solid Short Sleeve Boat Neck V ",
        imageUrl: "https://fakestoreapi.com/img/71HblAHs5xL._AC_UY879_-2.jpg",
        price: 75.99,
        oldPrice: 90.00,
        discount: 20,
        rating: 4.2,
        reviews: 85,
        isFavorite: true,
        isOutOfStock: false,
      ),
      ProductModel(
        name: "DANVOUY Womens T Shirt",
        imageUrl: "https://fakestoreapi.com/img/51eg55uWmdL._AC_UX679_.jpg",
        price: 39.99,
        oldPrice: 59.99,
        discount: 35,
        rating: 4.8,
        reviews: 200,
        isFavorite: false,
        isOutOfStock: true,
      ),

       ProductModel(
        name: "Bluetooth Speaker",
        imageUrl: "https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg",
        price: 43.94,
        oldPrice: 55.99,
        discount: 30,
        rating: 4.2,
        reviews: 201,
        isFavorite: false,
        isOutOfStock: false,
      ),

       ProductModel(
        name: "Bluetooth Speaker",
        imageUrl: "https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg",
        price: 60,
        oldPrice: 69.99,
        discount: 32,
        rating: 4.6,
        reviews: 250,
        isFavorite: false,
        isOutOfStock: false,
      ),
       ProductModel(
        name: "Rain Jacket Women Windbreaker Striped Climbing Raincoats",
        imageUrl: "https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg",
        price: 28.99,
        oldPrice: 42.99,
        discount: 20,
        rating: 4.3,
        reviews: 300,
        isFavorite: false,
        isOutOfStock: false,
      ),
 
    ];
  }
}
