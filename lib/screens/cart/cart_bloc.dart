import 'package:restaurant/screens/home/data/home_screen_data.dart';

class CartScreenBloc {
  // #3
  List<ProductModel> mainProductList = [];
  List<ProductModel> filterProductList = [];

  void filterList(List<ProductModel> productList) {
    for (ProductModel product in productList) {
      if (product.productCount > 0) {
        filterProductList.add(product);
      }
    }
  }

  // void removeFilterList(
  //   List<ProductModel> productList,
  //   // int itemIndex,
  // ) {
  //   for (ProductModel product in productList) {
  //     // filterProductList.remove(product);
  //     // product.productCount == 0;
  //     if (product.productCount == 0) {
  //       filterProductList.remove(product);
  //       // filterProductList.removeAt(product.index);
  //     }
  //   }
  // }

  void removeItemFromProductList(int index) {
    filterProductList[index].productCount = 0;
    filterProductList.removeAt(index);
  }

  String calculatePrice(double productPrice, int productQuantity) {
    return (productPrice * productQuantity).toStringAsFixed(2);
  }

  double billTotal() {
    double totalPrice = 0;

    for (ProductModel product in filterProductList) {
      double itemTotalPrice = product.productPrice * product.productCount;
      totalPrice += itemTotalPrice;
    }
    return totalPrice;
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
