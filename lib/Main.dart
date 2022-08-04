import 'dart:html';
import 'package:delivery/Signup.dart';
import 'package:delivery/test.dart';
import 'package:flutter/material.dart';
import 'Login.dart';
import 'MylistBuilder.dart';
import 'mylistview.dart';
import 'test.dart';
import 'Product.dart';
import 'AppDrawer.dart';
import '_loading.dart';
import 'final.dart';

void main(List<String> args) {
  runApp(Delivery());
}

class Delivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lao-Top Delivery',
      home: MyListBuilder(),
    );
  }
}
