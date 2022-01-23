import 'package:flutter/material.dart';
import 'package:restaurant/models/home_screen_data/smoothies_list.dart';

import 'package:restaurant/utils/app_bar/custom_app_bar.dart';
import 'package:restaurant/utils/tab_bar/top_tab_title_scree.dart';
import 'package:restaurant/utils/widgets/build_products_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
              itemCount: smoothiesList.length,
              itemBuilder: (context, index) => buildProductsList(
                smoothiesList[index],
                context,
                index,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
