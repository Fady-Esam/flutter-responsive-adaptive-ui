import 'dart:developer';

import 'package:flutter/material.dart';

import '../../widgets/for_test/custom_drawer.dart';
import '../../widgets/for_test/view_home_body.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.of(context).size.width.toString());
    return Scaffold(
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xffDBDBDB),
      appBar:MediaQuery.of(context).size.width < 900+32 ? AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Color.fromARGB(223, 255, 255, 255),
        ),
      ):null,
      body: const ViewHomeBody(),
    );
  }
}
