import 'package:flutter/material.dart';
import 'package:free_chat/constants.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  List<String> categories = ["Camisetas", "Vestidos", "Jeans", "Biquinis"];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: SizedBox(
        height: 25.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildCategory(index),
          itemCount: categories.length,
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isSelected ? textColor : textLightColor,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: defaultPadding / 4),
              height: 2,
              color: isSelected ? textColor : textLightColor,
              width: 30.0,
            )
          ],
        ),
      ),
    );
  }
}
