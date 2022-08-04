import 'dart:html';

import 'package:delivery/Signup.dart';
import 'package:flutter/material.dart';
import 'Welcome.dart';
import 'Main.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              child: CircleAvatar(
                radius: 100,
                backgroundImage:
                    AssetImage('images/istockphoto-1151084260-1024x1024.jpg'),
              ),
            ),
            Text(
              "Marlin Delivery",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "LOGIN",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "User Name",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width *
                  0.8, // dueng aw width khg desktop
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 153, 201, 240),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 252, 253, 253),
                  ),
                  hintText: "Enter Username",
                  border: InputBorder.none,
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Pass word",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 153, 201, 240),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock_rounded,
                      color: Color.fromARGB(255, 254, 254, 254),
                    ),
                    hintText: 'Pass word',
                    border: InputBorder.none),
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //ປູ່ມກົດ
            ElevatedButton(
              style: ButtonStyle(
                shadowColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 5, 5, 5)),
                minimumSize: MaterialStateProperty.all(const Size(200, 40)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(
                  Colors.blue.shade900,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Welcome(),
                  ),
                );
              },
              child: Text("Login"),
            ),
            SizedBox(
              height: 20,
            ),
            //ປູ່ມກົດ
            ElevatedButton(
              style: ButtonStyle(
                shadowColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 7, 7, 7)),
                minimumSize: MaterialStateProperty.all(const Size(200, 40)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(
                  Colors.blue.shade900,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Signup(),
                  ),
                );
              },
              child: Text("Sigup"),
            ),
          ],
        ),
      ),
    );
  }
}
