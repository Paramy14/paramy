//welcome.dart

import 'package:delivery/Login.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  //const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        title: Text("sign up"),
      ),

      //body
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
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
                  hintText: "Username",
                  border: InputBorder.none,
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Pass Word",
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
                obscureText: true, // jum jum
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock_rounded,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    hintText: 'Password',
                    border: InputBorder.none),

                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Email",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.bold),
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
                  hintText: "Email",
                  border: InputBorder.none,
                ),
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
                    builder: (context) => Login(),
                  ),
                );
              },
              child: Text("Signup"),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                const Text('allready a member?'),
                TextButton(
                  child: const Text(
                    'Long in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
