import 'package:flutter/material.dart';
import 'package:shop_app/PageHome.dart';

import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/components/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: ColorPalette.bg1,
        primarySwatch: Colors.orange,
      ),
      home: Signin(),
    );
  }
}
