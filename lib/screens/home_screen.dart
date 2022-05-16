import 'package:flutter/material.dart';
import 'package:free_chat/components/body.dart';
import 'package:free_chat/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          iconSize: 24.0,
          icon: const Icon(
            Icons.search,
            color: Colors.grey,
            size: 24.0,
          ),
        ),
        IconButton(
          onPressed: () {},
          iconSize: 24.0,
          icon: const Icon(
            Icons.shopping_cart,
            color: Colors.grey,
            size: 24.0,
          ),
        ),
        const SizedBox(width: defaultPadding / 2)
      ],
    );
  }
}
