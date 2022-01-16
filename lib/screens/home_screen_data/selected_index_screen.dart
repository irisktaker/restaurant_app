import 'package:flutter/material.dart';

import '../home_screen.dart';

int selectedIndex = 0;
selectedIndexScreen() {
  if (selectedIndex == 0) {
    return HomePage();
  } else if (selectedIndex == 1) {
    return MyCart();
  } else {
    return Container(
      color: Colors.green.shade200,
    );
  }
}

/// AppBar General
///
AppBar appBar(
  BuildContext context, {
  required String title,
  Widget? leading,
  IconData? iconLabel = Icons.notifications,
}) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    automaticallyImplyLeading: false,
    leading: leading,
    centerTitle: true,
    title: Text(
      title,
      style: const TextStyle(color: Colors.grey, fontFamily: 'Roboto'),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          iconLabel,
          color: Colors.grey.shade400,
        ),
      ),
      const SizedBox(width: 6),
    ],
  );
}

/// ############################################

/// Home Page
///
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, title: 'Jusbar'),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 16, left: 16),
        child: ListView(
          shrinkWrap: true,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  topTabTitles(title: 'smoothies'),
                  topTabTitles(title: 'pastry', color: Colors.grey),
                  topTabTitles(title: 'icemix', color: Colors.grey),
                  topTabTitles(title: 'mix', color: Colors.grey),
                ],
              ),
            ),
            const SizedBox(height: 2),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 44.0),
              child: const CircleAvatar(
                backgroundColor: Color(0xFFEF7CBE),
                radius: 3.5,
              ),
            ),
            const SizedBox(height: 24),
            ListView.builder(
              shrinkWrap: true,
              itemCount: homeBarItems.smoothiesList.length,
              itemBuilder: (context, index) => buildProductsList(
                productName: homeBarItems.smoothiesList[index].productName,
                productPrice: homeBarItems.smoothiesList[index].productPrice,
                bgColors: homeBarItems.smoothiesList[index].bgColors,
                productImage: homeBarItems.smoothiesList[index].productImage,
                // onTap: homeBarItems.smoothiesList[index].onTap,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Home Page
  ///
  Column buildProductsList({
    String? productName,
    String? productPrice,
    List<Color>? bgColors,
    String? productImage,
    void Function()? onTap,
  }) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: InkWell(
                onTap: onTap,
                child: Container(
                  height: 75,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: bgColors!,
                    ),
                    borderRadius: BorderRadius.circular(37.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          productName!,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          productPrice!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'cocogoose',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            SizedBox(
              width: 75,
              height: 75,
              child: Image.asset(
                productImage!,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  /// Scroll Tap Titles
  ///
  Widget topTabTitles({
    required String? title,
    Color color = const Color(0xFF676767),
  }) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Text(
            title!,
            style: TextStyle(
              color: color,
              fontFamily: 'cocogoose',
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(width: 75),
      ],
    );
  }
}

/// ############################################

/// Cart Page
///
class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
          const SizedBox(height: 16),
          Expanded(
            child: Container(
              width: size.width,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
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
                        color: Colors.grey.shade100,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(flex: 1, child: Container()),
                          Image.asset(
                            'assets/images/Group 2137.png',
                            width: 60,
                            height: 60,
                          ),
                          const SizedBox(width: 6),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'water melon',
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
                                    '200ml, 1x ₹50.00',
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
                            onPressed: () {},
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
                    child: Container(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Container(
              width: size.width,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              color: Colors.green,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: size.width,
            height: size.height * 0.40,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
