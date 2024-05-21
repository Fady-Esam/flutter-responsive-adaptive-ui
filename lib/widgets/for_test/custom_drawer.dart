import 'package:flutter/material.dart';
import '../../models/for_test/item_model.dart';
import 'custom_drawer_list_view.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {

  List<ItemModel> items = const [
    ItemModel(text: 'd a s h b o a r d', icon: Icons.home),
    ItemModel(text: 's e t t i n g s', icon: Icons.settings),
    ItemModel(text: 'a b o u t', icon: Icons.info),
    ItemModel(text: 'l o g o u t', icon: Icons.logout),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xffDBDBDB),
      elevation: 0,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 50,
              ),
            ),
            const SizedBox(height: 50),
            CustomDrawerListView(items: items),
          ],
        ),
      ),
    );
  }
}
