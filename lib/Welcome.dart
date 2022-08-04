//welcome.dart

import 'package:delivery/AppDrawer.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  //const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welocme"),
        backgroundColor: Color.fromARGB(255, 82, 255, 183),
      ),
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: Drawer(
        child: AppDrawer(),
      ),
    );
  }
}
