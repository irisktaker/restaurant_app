class ProductsDetailsScreenBloc {
  
  // how to calc a product price multiply with quantity
  String calculatePrice(double productPrice, int productQuantity) {
    return (productPrice * productQuantity).toStringAsFixed(2);
  }
}
