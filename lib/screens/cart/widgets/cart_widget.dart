// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:restaurant/screens/cart/cart_bloc.dart';
import 'package:restaurant/screens/home/data/home_screen_data.dart';
// class AddToCartProductContainer extends StatefulWidget {
//   const AddToCartProductContainer({
//     Key? key,
//   }) : super(key: key);
//   @override
//   _AddToCartProductContainerState createState() =>
//       _AddToCartProductContainerState();
// }
// class _AddToCartProductContainerState extends State<AddToCartProductContainer> {
//   @override
//   Widget build(BuildContext context) {
//     ///
//     ///
//     Size size = MediaQuery.of(context).size;
//   }
// }

CartScreenBloc _bloc = CartScreenBloc();

class MyCartProduct extends StatefulWidget {
  int itemIndex;
  List<ProductModel> filterProductList;

  MyCartProduct({
    Key? key,
    required this.filterProductList,
    required this.itemIndex,
  }) : super(key: key);

  @override
  _MyCartProductState createState() => _MyCartProductState();
}

class _MyCartProductState extends State<MyCartProduct> {
  @override
  Widget build(BuildContext context) {
    _bloc.filterList(widget.filterProductList);
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: size.width,
        height: 150,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(flex: 1, child: Container()),
                    Image.asset(
                      // 'assets/images/apple.png',

                      // the problem in the index it's = 0
                      // and it's not the index of the list
                      // _bloc.filterProductList[widget.itemIndex].productImage,
                      widget.filterProductList[widget.itemIndex].productImage,
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // _bloc.filterProductList[itemIndex].productName,
                          widget
                              .filterProductList[widget.itemIndex].productName,
                          // 'test',
                          style: TextStyle(
                            color: Colors.grey.shade800,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.pink.shade200,
                              radius: 10,
                              child: const Icon(
                                Icons.done,
                                size: 11,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              // '${_bloc.filterProductList[widget.itemIndex].productSize},\t'
                              //         '${_bloc.filterProductList[widget.itemIndex].productCount}x \t'
                              //         '${_bloc.filterProductList[widget.itemIndex].productPrice}'
                              //     .toString(),

                              '${widget.filterProductList[widget.itemIndex].productSize},\t'
                                      '${widget.filterProductList[widget.itemIndex].productCount}x \t'
                                      '${widget.filterProductList[widget.itemIndex].productPrice}'
                                  .toString(),

                              // '200ml, 1x ₹50.00',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(flex: 8, child: Container()),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          ///
                          ///
                          ///

                          widget.filterProductList[widget.itemIndex]
                              .productCount = 0;
                        });
                      },
                      icon: Icon(
                        Icons.clear,
                        color: Colors.red.shade600,
                        size: 30,
                      ),
                    ),
                    Expanded(flex: 1, child: Container()),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(
                                () {
                                  widget.filterProductList[widget.itemIndex]
                                              .productCount <=
                                          0
                                      ? 0
                                      : widget
                                          .filterProductList[widget.itemIndex]
                                          .productCount--;
                                },
                              );
                            },
                            icon: Icon(
                              Icons.remove_circle_outline,
                              color: Colors.grey.shade500,
                            ),
                          ),
                          Text(
                            widget.filterProductList[widget.itemIndex]
                                .productCount
                                .toString(),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                widget.filterProductList[widget.itemIndex]
                                    .productCount++;
                              });
                            },
                            icon: Icon(
                              Icons.add_circle_outline,
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      calcProductMultiplyWithQty(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String calcProductMultiplyWithQty() {
    return _bloc.calculatePrice(
        widget.filterProductList[widget.itemIndex].productPrice,
        widget.filterProductList[widget.itemIndex].productCount);
  }
}
