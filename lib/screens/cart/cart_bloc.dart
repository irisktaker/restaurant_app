import 'package:restaurant/screens/home/data/home_screen_data.dart';

class CartScreenBloc {
  // #3
  List<ProductModel> filterProductList = [];

  void filterList(List<ProductModel> productList) {
    for (ProductModel product in productList) {
      if (product.productCount > 0) {
        filterProductList.add(product);
      }
    }
  }
  
  String calculatePrice(double productPrice, int productQuantity) {
    return (productPrice * productQuantity).toStringAsFixed(2);
  }

  // #2

  // List<ProductModel> productCardList = [];
  // List<ProductModel> productQtyGraterThanZero(List<ProductModel> productList) {
  //   for (ProductModel product in productList) {
  //     if (product.productCount > 0) {
  //       productCardList.add(product);
  //     }
  //   }
  //   return productCardList;
  // }

  // #1

  // int productCount = 0;
  // int productQtyGraterThanZero(List<ProductModel> smoothiesList) {
  //   for (var product in smoothiesList) {
  //     if (product.productCount > 0) {
  //       productCount++;
  //     }
  //   }
  //   return productCount;
  // }

}
