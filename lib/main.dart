import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/views/dashboar_view.dart';

void main() {
  DevicePreview(builder: (context) => const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const DashBoardView(),
    );
  }
}
