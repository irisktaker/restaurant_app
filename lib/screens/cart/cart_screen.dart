// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:restaurant/screens/cart/cart_bloc.dart';
import 'package:restaurant/screens/home/data/home_screen_data.dart';
import 'package:restaurant/utils/app_bar/custom_app_bar.dart';
import 'widgets/cart_widget.dart';
import 'widgets/your_order_box.dart';

class CartScreen extends StatelessWidget {
  final CartScreenBloc _bloc = CartScreenBloc();

  List<ProductModel> productList;

  CartScreen({
    Key? key,
    required this.productList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController();
    Size size = MediaQuery.of(context).size;

    _bloc.filterList(productList);
    // _bloc.filterProductList;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: appBar(
        context,
        title: 'My Cart',
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_outlined),
          color: Colors.grey.shade400,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: ListView.builder(
              controller: _scrollController,
              itemCount: _bloc.filterProductList.length,
              itemBuilder: (context, index) {
                return addToCartProductContainer(size);
              },
            ),
          ),
          yourOrderBox(size, context)
        ],
      ),
    );
  }
}
