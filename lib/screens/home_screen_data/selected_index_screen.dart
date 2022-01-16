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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 16, left: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  topTabTitles(title: 'smoothies'),
                  topTabTitles(title: 'pastry', color: Colors.grey),
                  topTabTitles(title: 'icemix', color: Colors.grey),
                  topTabTitles(title: 'mix', color: Colors.grey),
                ],
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
                  onTap: homeBarItems.smoothiesList[index].onTap,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Home Page
  ///
  Column buildProductsList({
    String? productName,
    String? productPrice,
    required List<Color> bgColors,
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
                      colors: bgColors,
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
        )
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
    );
  }
}
