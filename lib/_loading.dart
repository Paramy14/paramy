import 'package:flutter/material.dart';
import 'WorldTime.dart';

class Loading extends StatefulWidget {
  Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String err = '';
  String time = 'Loading...';

  void setupWorldTime() async {
    WorldTime instance = new WorldTime(
        loction: 'Vientiane', flag: 'lo.png', url: 'Asia/Vientiane');
    await instance.getTime();

    setState(() {
      time = instance.time;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("World Time")),
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Center(
          child: Text(time),
        ),
      ),
    );
  }
}
