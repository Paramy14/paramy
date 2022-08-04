import 'package:flutter/material.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class Final extends StatefulWidget {
  Final({Key? key}) : super(key: key);

  @override
  State<Final> createState() => _FinalState();
}

class _FinalState extends State<Final> {
  List pets = [];
  bool isLoading = true;
  void fetchPets() async {
    var url = Uri.http("localhost:3000", "/movies");
    var respone = await http.get(url, headers: {
      "Accept": "application/json",
      "Access-Control_Allow_Origin": "*"
    });

    if (respone.statusCode == 200) {
      var items = convert.jsonDecode(respone.body);
      print(items);
      setState(() {
        pets = items;
        isLoading = false;
      });
      //print(pets);
      //print(pets);
    } else {
      print("Can not Fetch");
    }
  }

  @override
  Widget build(BuildContext context) {
    // final List<List<String>> pets = <List<String>>[
    //   ['Dog', 'Lily'],
    //   ['Cat', 'Garfied'],
    //   ['Fish', 'bob'],
    // ];

    fetchPets();
    //CircularProgessIdecator()
    if (isLoading == true) {
      return Material(
        child: Center(
          child: CircularProgressIndicator(
            color: Colors.green,
          ),
        ),
      );
    }

    return Material(
      child: ListView.builder(
        itemCount: pets.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.grey,
            margin: EdgeInsets.only(bottom: 2),
            child: Row(children: <Widget>[
              Expanded(
                flex: 2,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  // backgroundImage: NetworkImage(pets[index]['avatar']),
                ),
              ),
              Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      //pets[index][1],
                      pets[index]['title'],
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      pets[index]['genre'],
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: IconButton(
                  onPressed: (() => null),
                  icon: Icon(Icons.phone),
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}
